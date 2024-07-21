function [] = writeCustomMatrixVarToTexForLaTeX(varName, varValues)


    varNames = strings(3, 3);
    varValuesLaTeX = strings(3, 3);

    for i=1:3
        for j=1:3
            varNames(i, j) = strcat(varName,"_{", string(i), string(j), '}');
            varValuesLaTeX(i, j) = latex(varValues(i, j));
        end
    end

  
    outfile = varName + "_mat.tex";

    varValuesLaTeX = customLaTeX(varValuesLaTeX);
    data = [reshape(varNames, 9, 1), reshape(varValuesLaTeX, 9, 1)] ;
    
    fid = fopen(outfile, 'w');
    
  
    fprintf(fid, "\\begin{align}\n");
    
    for n=1:size(data, 1) 
        varName = data(n, 1);
        varValueLaTeX = data(n, 2);

        if(varValueLaTeX == "0")
            continue;
        end

        
        if(n~=size(data, 1))
            fprintf(fid, "%s &= %s \\\\ \n", varName, varValueLaTeX);
        else
            fprintf(fid, "%s &= %s \n", varName, varValueLaTeX);
        end

    end

    fprintf(fid, "\\end{align}\n");

    fclose(fid);

end