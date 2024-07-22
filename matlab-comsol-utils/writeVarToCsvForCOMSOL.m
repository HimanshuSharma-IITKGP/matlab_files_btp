function [] = writeVarToCsvForCOMSOL(varName, varValue, fileName)
    writematrix([varName, erase(string(varValue), '_')], fileName);

end