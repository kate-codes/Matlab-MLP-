%Main - intialize values 
%Code by Kate Sprague
%11/2/2017


%initialize weights and biases for the network
%Init
TestInit

%numIterations = 200000;
numIterations = 100000;
y = zeros(1,numIterations);
for i=1:numIterations
        %disp(i);
        r = randi(length(C));
        %disp(r);
        input = C{1,r};
        target = C{2,r};
        Backpropagation
        y(1,i) = sum(error); %mean-squared error
%         if i > 50000
%             learningRate = 0.005;
%         end
end

% sumError = 1;
% numIterations = 0;
% y = [];
% while sumError > 0.0001
%         %disp(i);
%         r = randi(length(C));
%         %disp(r);
%         input = C{1,r};
%         target = C{2,r};
%         Backpropagation
%         sumError = sum(error);
%         y = horzcat(y,sumError); %mean-squared error
%         numIterations = numIterations + 1; %iteration incremented
% end
disp("Number of Neurons on the Hidden Layer: ");
disp(NumberNeuronsFirstLayer);
disp("Learning Rate of: ");
disp(learningRate);
disp("Number of Iterations: ");
disp(numIterations);
disp("Error at last iteration: ");
disp(sum(error));
x = 1:1:numIterations; %iteration domain
plot(x,y);

%initial main iteration (only once) 
% r = randi(length(C));
% disp(r);
% input = C{1,r};
% target = C{2,r};
% Backpropagation

%if you want to display the cell-array contents
% for i=1:length(C)
%     disp("The testing set");
%     disp(C{1,i});
%     disp("The corresponding targets for the testng set");
%     disp(C{2,i});
% end

