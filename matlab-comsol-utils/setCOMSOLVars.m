function [] = setCOMSOLVars(model, varTag, fileNamesList)
    
    for l = 1:length(fileNamesList)
        fileName = fileNamesList(l);
        readVarsFromTxtForCOMSOLandSet(model, varTag, fileName);        
    end
    
end