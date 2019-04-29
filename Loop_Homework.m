%% Loop Homework
% Created By Nick Cocetti
% Created on 10/4/18
% This is a homework intended to sharpen our skills of on loops.
a = [1 2 3 4 5 6 7 8 9 10];
for i = 1:n
    for j = 1:m
        if i== 1
            a(i,j)=j;
        elseif j == 1
            a(i,j) = i;
        else
            a(i,j) = a(i-1,j) + a(i,j-1);
        end
    end
end
%% Problem 2
clc
clear
format LONG
AGE = input('What is your age?');
GENDER = input('What gender are you? (1)Male (2)female');
RHR = input('What is your resting heart rate?');
INTEN = input('What is your fitness level? High(3), medium(2) or low?(1)');,
if INTEN == 3;
    INTEN = .8; 
end
if INTEN == 2;
    INTEN = .65;
end
if INTEN == 1;
    INTEN = .55;
end 
if GENDER == 1;
    
    if AGE >= 220
    disp('ERROR: Age not valid')
    elseif INTEN > 3
            disp('Error: Invalid fitness level')
      
    else
        THR = [(220-AGE)-RHR]*INTEN+RHR;
    fprintf('Your training heart rate is %4d\n',THR)
   
    end
end
if GENDER == 2;
    
     THR = [(206-(.88*AGE))-RHR]*INTEN+RHR;
fprintf('Your training heart rate is %4d\n',THR)
end



         
    
   
        
    
    
