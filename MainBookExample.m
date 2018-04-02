%Main for book example
%Main - intialize values 
%Code by Kate Sprague
%11/2/2017


%initialize weights and biases for the network
%Init
BookExampleInit

%Backprop algorithm: 
%present input
input = p0;

%propogate input to output
n1 = PropogateInputToOutput(W1,input,b1);
a1 = logsig(n1);
n2 = PropogateInputToOutput(W2,a1,b2);
a2 = purelin(n2);

%compute error (output layer sensitivities)
error = t0-a2;
%propogate the senstivities back through the network

%first iteration
F = 1; %linear transfer function has derivitive of 1
% disp("F for first iteration: ");
% disp(F);
s2 = -2 * F * error;

%second iteration
F = MakeJacobianMatrixForBackprop(a1);
% disp("F for second iteration: ");
% disp(F);
s1 = F * W2' * s2;

%__________________________________________________


%update weights and biases
learningRate = 0.1; 

W2plus = W2 - learningRate * (s2 * a1');
b2plus = b2 - learningRate * s2; 
disp("W2 for second iteration: ");
disp(W2plus);
disp("b2 for second iteration: ");
disp(b2plus);

W1plus = W1 - learningRate * (s1 * input');
b1plus = b1 - learningRate * s1; 
disp("W1 for second iteration: ");
disp(W1plus);
disp("b1 for second iteration: ");
disp(b1plus);
