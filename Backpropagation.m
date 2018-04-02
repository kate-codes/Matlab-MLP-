
%Backprop algorithm: 

%propogate input to output
n1 = PropogateInputToOutput(W1,input,b1);
a1 = logsig(n1);
n2 = PropogateInputToOutput(W2,a1,b2);
a2 = logsig(n2);

%compute error (output layer sensitivities)
%error = ComputeError(t0,a2);
error = target-a2;

%propogate the senstivities back through the network
%first iteration
F = MakeJacobianMatrixForBackprop(a2);
% disp("F for first iteration: ");
% disp(F);
s2 = -2 * F * error;

%second iteration
F = MakeJacobianMatrixForBackprop(a1);
% disp("F for second iteration: ");
% disp(F);
s1 = F * W2' * s2;

%update weights and biases
% learningRate = 0.01; 

W2plus = W2 - learningRate * (s2 * a1');
b2plus = b2 - learningRate * s2; 
% disp("W2 for second iteration: ");
% disp(W2plus);
% disp("b2 for second iteration: ");
% disp(b2plus);
W2 = W2plus;
b2 = b2plus; 

W1plus = W1 - learningRate * (s1 * input');
b1plus = b1 - learningRate * s1; 
% disp("W1 for second iteration: ");
% disp(W1plus);
% disp("b1 for second iteration: ");
% disp(b1plus);
W1 = W1plus;
b1 = b1plus; 
