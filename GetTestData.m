%Get Test Data
format compact;
diary Test.txt;
numTests = 10;
AverageError = 0;
for i=1:numTests
    disp("Output of test " + i);
    Main
    disp(" ");
    AverageError = AverageError + error; 
end
disp(" ");
disp("The average error over " + i + " tests is: ");
disp(sum(AverageError)/numTests); 
diary;