function mat = mySym(name, size)
mat = sym(name, size);
mat(2, 3) = 0; mat(3, 2) = 0; mat(3, 1) = 0; mat(1, 3) = 0;
end