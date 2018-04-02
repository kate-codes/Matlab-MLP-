function m = MakeJacobianMatrixForBackprop(a)
% Make a n-by-1 matrix of 1s:
matrixOfOnes(1:length(a),1:1) = 1;
%disp(matrixOfOnes);

temp = (matrixOfOnes - a);
%disp(temp);
%disp("value = ");
% for value = temp
%     value = value * 
%     disp(value);
% end

for row = 1:length(a)
    temp(row) = temp(row) * a(row);
end

%disp(temp);

 m = diag(temp);
end

%derivitive of log-sig: 
%f'(n) = (1 - a)(a) 
%or: 
%f'(n) = (1 -(f(n))) * f(n)