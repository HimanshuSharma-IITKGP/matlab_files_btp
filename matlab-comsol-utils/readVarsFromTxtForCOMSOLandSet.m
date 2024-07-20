function [] = readVarsFromTxtForCOMSOLandSet(model, varTag, fileName)

    lines = readlines(fileName);

   for n=1:(length(lines)-1) % last entry of lines is an empty string
       line = split(lines(n), ',', 2);
        varName = line(1);
        varValue = line(2);
        model.variable(varTag).set(varName, varValue);
        model.variable(varTag).descr(varName, varName);
   end
end