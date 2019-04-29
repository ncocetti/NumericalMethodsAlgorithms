% Nick Cocetti
% 2/1/2019
function nd = days(mo,da,leap)
% This function will return the number of days elapsed through the year
% when the user inputs days(number of months, what day of the month, and
% whether it is a leap year(1) or not(0).
% mo must be a value 1-12 and da must be a value 1-number of days in that
% month.
if mo >12||mo<1
    error('mo must be a positive integer 1 through 12');
end
if da < 1
    error('Day must be a positive, nonzero, value ranging in that month')
end
if leap == 0
    months = [31,28,31,30,31,30,31,31,30,31,30,31];
    nd = sum(months(1:mo))-(months(mo)-da);
    fprintf('The number of days elapsed is %.3f\n', (nd));
    if da>months(mo)
        error('Day of month exceeds days in that month.');
    end
elseif leap == 1
    months = [31,29,31,30,31,30,31,31,30,31,30,31];
    nd = sum(months(1:mo))-(months(mo)-da);
    fprintf('The number of days elapsed is %.3f\n', (nd));
    if da>months(mo)
        error('Day of month exceeds days in that month.')
    end
else
    error('Value in 3rd place of days function must be a 1(leap year) or 0(non leap year).'); 
end
end
    