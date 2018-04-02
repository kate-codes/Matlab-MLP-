%The initialization script of values for use in the program. 

%initialize inputs to train with
p0 = [-1 1 1 1 1 -1 1 -1 -1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 -1 -1 1 -1 1 1 1 1 -1];
p0 = p0';
p1 = [-1 -1 -1 -1 -1 -1 1 -1 -1 -1 -1 -1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
p1 = p1';
p2 = [1 -1 -1 -1 -1 -1 1 -1 -1 1 1 1 1 -1 -1 1 -1 1 -1 1 1 -1 -1 1 -1 -1 -1 -1 -1 1];
p2 = p2';
p3 = [1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 -1 1 1 1 1 1 1 1];
p3 = p3';

t0 = [1 0 0];
t0 = t0';
t1 = [0 1 0];
t1 = t1';
t2 = [0 0 1];
t2 = t2';

%set up the multilayer network!
NumberOfInputs = length(p0); 
NumberNeuronsFirstLayer = 8; %hidden layer
NumberNeuronsSecondLayer = length(t0); %output layer
%NumberNeuronsThirdLayer = length(t0); %ouput layer if we had 3 full layers

%Initilaize the weight matrices to random values between 0 and 1
%S rows, and R columns where the ANN is multilayer (S x R)
%it should be (numNeuronsInCurrentLayer, NumberOfInputValues)
W1 = rand(NumberNeuronsFirstLayer,NumberOfInputs); %first layer
W2 = rand(NumberNeuronsSecondLayer,NumberNeuronsFirstLayer); %second
%rand(3,4) returns a 3-by-4 matrix.

%Now we need to initialize the vectors for the biases as well
%b is a vector for each layer made up of s neurons (s x 1)
b1 = rand(NumberNeuronsFirstLayer,1);
b2 = rand(NumberNeuronsSecondLayer,1);

%Cell Array of inputs and targets where inputs are the first row, and
%targets the second row so p0 would be at -> C{1,1} 
%and t0 would be at -> C{2,1}
C = {p0, p1, p2; t0, t1, t2};
learningRate = 0.1;
