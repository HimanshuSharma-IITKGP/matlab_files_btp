function [] = writeMatrixVarToTxtForCOMSOL(varName, varValues)
    % fid = fopen(varName+"_mat.txt", 'w' );

    % for i=1:3
    %     for j=1:3
    %         varName_ij = strcat(varName,"_", string(i), string(j));
    %         fprintf(fid, "%s\n", varName_ij);
    %         fprintf(fid, "%s\n\n\n", varValues(i, j));
    %     end
    % end

    varNames = strings(3, 3);
    for i=1:3
        for j=1:3
            varNames(i, j) = strcat(varName,"_", string(i), string(j));
        end
    end

    data = [reshape(varNames, 9, 1), reshape(varValues, 9, 1)] ;
    writematrix(data, varName+"_mat.txt")
    % fclose(fid);

end