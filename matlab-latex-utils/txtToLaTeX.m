function [] = txtToLaTeX(infile, outfile)
    
    lines = readlines(infile);

    

    fid = fopen(outfile, 'w');
    
    fprintf(fid, "\\documentclass[ABC]{XYZ} \n");
    fprintf(fid, "\\begin{align}\n");
    
    for n=1:(length(lines)-1) % last entry of lines is an empty string
        line = split(lines(n), ',', 2);
        varName = line(1);
        varValue = line(2);
        fprintf(fid, "%s &= %s \\\\ \n", varName, varValue);
    end

    fprintf(fid, "\\end{align}\n");

    fclose(fid);


end