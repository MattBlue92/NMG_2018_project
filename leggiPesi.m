function [A] = leggiPesi(nome)
    fileID=fopen(nome,'r');
    A=fscanf(fileID, '%f');
    fclose(fileID);
end

