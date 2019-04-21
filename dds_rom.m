n = 0:4095 ;
duty = 50;
yn = square(n,duty) ;
yn = round((yn+1)*2047); 
plot(n,yn);

fid = fopen('dds_rom.coe','wt');
fprintf(fid,'memory_initialization_radix = 10;\nmemory_initialization_vector = ');

for i = 1 : 4096
    if mod(i-1,16) == 0 
        fprintf(fid,'\n');
    end
    fprintf(fid,'%4d,',yn(i));
end
