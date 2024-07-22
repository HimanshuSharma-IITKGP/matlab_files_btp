function [] = writeMatrixVarToCsvForCOMSOL(varName, varValues, fileName)
    
    count = 1;
    data = strings(9, 1);

    for i=1:3
        for j=1:3
            if(varValues(i, j) ~= '0')
                varName_ij = strcat(varName,"_", string(i), string(j));

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