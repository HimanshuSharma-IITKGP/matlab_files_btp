function [] = writeVarsToTxtForCOMSOL(varNames, varValues, fileName)
    fid = fopen(fileName, 'w' );
    
    for n=length(varNames)
            fprintf(fid, "%s\n", varNames(n));
            fprintf(fid, "%s\n\n\n", varValues(n));
    end

    fclose(fid);

end