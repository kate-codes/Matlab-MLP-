%The initialization script of values for use in the program. 

%initialize inputs to train with
p0 = [1];
p0 = p0';

t0 = 1 + (sin(pi/4) * p0);

%set up the multilayer network!
NumberOfInputs = length(p0); 
NumberNeuronsFirstLayer = 2; 
NumberNeuronsSecondLayer = length(t0); %output layer
%NumberNeuronsThirdLayer = length(t0); %ouput layer if we had 3 full layers

%Initilaize the weight matrices to random values between 0 and 1
%S rows, and R columns where the ANN is multilayer (S x R)
%it should be (numNeuronsInCurrentLayer, NumberOfInputValues)
W1 = [-0.27; -0.41]; %first layer
W2 = [0.09 -0.17]; %second
%rand(3,4) returns a 3-by-4 matrix.

%Now we need to initialize the vectors for the biases as well
%b is a vector for each layer made up of s neurons (s x 1)
b1 = [-0.48; -0.13];
b2 = [0.48];
