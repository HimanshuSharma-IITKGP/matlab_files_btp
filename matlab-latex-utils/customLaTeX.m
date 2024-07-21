function expr = customLaTeX(expr)

    

    %replace \frac{}{} by \fc{}{}
    pattern ='\\frac\{(.*?)\}\{(.*?)\}';
    replacement = '\\fc{$1}{$2}';
    expr = regexprep(expr, pattern, replacement);



    % replace \tilde{F}_{ij} by \tF{ij}
    pattern = '\\tilde\{F\}_{([1-3][1-3])}';
    replacement = '\\tF{$1}';
    expr = regexprep(expr, pattern, replacement);

    
    % replace \mathrm{el} by \el
    pattern="\\mathrm\{el\}";
    replacement = "\\el";
    expr = regexprep(expr, pattern, replacement);

    
    % replace \tilde{F}_{#1}^{\el} by \tFel{#1}
    pattern = "\\tF\{(.*?)\}\^\{\\el\}";
    replacement = "\\tFel{$1}";
    expr = regexprep(expr, pattern, replacement);





end