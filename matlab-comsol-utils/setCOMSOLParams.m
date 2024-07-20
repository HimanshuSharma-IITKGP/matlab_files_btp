function [] = setCOMSOLParams(model, fileName)

    
   lines = readlines(fileName);

   for n=1:(length(lines)-1) % last entry of lines is an empty string
       [paramName, paramValue] = split(lines(n), ',');

        model.param.set(paramName, paramValue);
        model.param.descr(paramName, paramValue);
   end


end