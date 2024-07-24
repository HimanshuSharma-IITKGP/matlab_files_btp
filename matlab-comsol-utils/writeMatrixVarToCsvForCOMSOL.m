function [] = writeMatrixVarToCsvForCOMSOL(varName, varValues, fileName)
    
    count = 1;
    data = strings(9, 1);

    for i=1:3
        for j=1:3
            if(varValues(i, j) ~= '0')
                
                varName_ij = strcat(varName, string(i), string(j)); % of the form Fij

                if(contains(varName, "el"))
                    varName_ij = strcat(extractBetween(varName, 1, strlength(varName)-2), string(i), string(j), "el"); % of the form Fijel
                end

                data(count, 1) = varName_ij;
                data(count, 2) = varValues(i, j);
                count = count + 1;
            end
        end
    end

    data = erase(data, '_');
    data = strrep(data, "tilde", "_t");


    writematrix(data(1:count-1, :), fileName)

end