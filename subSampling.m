function file = subSampling(file, deltaV, deltaU, x, y)

fileID = fopen('res - d = 2.txt','w');
fprintf(fileID, '%s %3s\r\n','x', 'y');

for i=0:floor(x/deltaV)
    for j=0:floor(y/deltaU)
        for k=1:(deltaV*deltaU)
            ver = i*deltaV+floor((k-1)/deltaV);
            hor = j*deltaU+mod(k-1,deltaU);
            fprintf(fileID, '%d %3d\r\n', ver, hor);
        end
    end
end

fclose(fileID);

end