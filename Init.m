
%note that functions have individual 'function' workspaces
%scripts share the 'base workspace' until a function call, and functions
%called within scripts share the workspace of the function that called
%them, so they share a 'function workspace'
%so if we modify a value in the shared workspace then it will carry over
%t0 = [100 101 102];

%initialize inputs to train with
p0 = [-1 1 1 1 1 -1 1 -1 -1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 -1 -1 1 -1 1 1 1 1 -1];
p0 = p0';
p1 = [-1 -1 -1 -1 -1 -1 1 -1 -1 -1 -1 -1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
p1 = p1';
p2 = [1 -1 -1 -1 -1 -1 1 -1 -1 1 1 1 1 -1 -1 1 -1 1 -1 1 1 -1 -1 1 -1 -1 -1 -1 -1 1];
p2 = p2';
p3 = [1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 1 1 1 1 1];
p3 = p3';
p4 = [1 1 1 -1 -1 -1 -1 -1 1 -1 -1 -1 -1 -1 1 -1 -1 -1 1 1 1 1 1 1 -1 -1 1 -1 -1 -1];
p4 = p4';
p5 = [1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 1 1 1 1];
p5 = p5';
p6 = [1 1 1 1 1 1 1 -1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 1 1 1 1];
p6 = p6';

%These are the target values for the network
t0 = [1 0 0 0 0 0 0];
t0 = t0';
t1 = [0 1 0 0 0 0 0];
t1 = t1';
t2 = [0 0 1 0 0 0 0];
t2 = t2';
t3 = [0 0 0 1 0 0 0];
t3 = t3';
t4 = [0 0 0 0 1 0 0];
t4 = t4';
t5 = [0 0 0 0 0 1 0];
t5 = t5';
t6 = [0 0 0 0 0 0 1];
t6 = t6';

%set up the multilayer network!
NumberOfInputs = length(p0); 
NumberNeuronsFirstLayer = 4; 
NumberNeuronsSecondLayer = length(t0); %output layer
%NumberNeuronsThirdLayer = length(t0); %ouput layer if we had 3 full layers

%Initilaize the weight matrices to random values between 0 and 1
%S rows, and R columns where the ANN is multilayer (S x R)
%it should be (numNeuronsInCurrentLayer, NumberOfInputValues)
W1 = rand(NumberNeuronsFirstLayer,NumberOfInputs); %first layer
W2 = rand(NumberNeuronsSecondLayer,NumberNeuronsFirstLayer); %second
%W3 = rand(NumberNeuronsThirdLayer,NumberNeuronsSecondLayer); %third
%rand(3,4) returns a 3-by-4 matrix.

%Now we need to initialize the vectors for the biases as well
%b is a vector for each layer made up of s neurons (s x 1)
b1 = rand(NumberNeuronsFirstLayer,1);
b2 = rand(NumberNeuronsSecondLayer,1);
%b3 = rand(NumberNeuronsThirdLayer,1);



% %check for correctness
% disp("W1 = ");
% disp(W1);
% disp("W2 = ");
% disp(W2);
% disp("W3 = ");
% disp(W3);
% disp("b1 = ");
% disp(b1);
% disp("b2 = ");
% disp(b2);
% disp("b3 = ");
% disp(b3);