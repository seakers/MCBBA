%Data 1
close all
clear all
name = 'EASYSYNCHTEST';
score1 = importdata(['score',name,'18.txt']);
score2 = importdata(['score',name,'28.txt']);
score3 = importdata(['score',name,'38.txt']);
score4 = importdata(['score',name,'48.txt']);
score5 = importdata(['score',name,'58.txt']);
score6 = importdata(['score',name,'68.txt']);
score7 = importdata(['score',name,'78.txt']);
score8 = importdata(['score',name,'88.txt']);
score9 = importdata(['score',name,'98.txt']);
score10 = importdata(['score',name,'108.txt']);
 
cost1 = importdata(['cost',name,'18.txt']);
cost2 = importdata(['cost',name,'28.txt']);
cost3 = importdata(['cost',name,'38.txt']);
cost4 = importdata(['cost',name,'48.txt']);
cost5 = importdata(['cost',name,'58.txt']);
cost6 = importdata(['cost',name,'68.txt']);
cost7 = importdata(['cost',name,'78.txt']);
cost8 = importdata(['cost',name,'88.txt']);
cost9 = importdata(['cost',name,'98.txt']);
cost10 = importdata(['cost',name,'108.txt']);


coalitions1 = importdata(['coalitions',name,'18.txt']);
coalitions2 = importdata(['coalitions',name,'28.txt']);
coalitions3 = importdata(['coalitions',name,'38.txt']);
coalitions4 = importdata(['coalitions',name,'48.txt']);
coalitions5 = importdata(['coalitions',name,'58.txt']);
coalitions6 = importdata(['coalitions',name,'68.txt']);
coalitions7 = importdata(['coalitions',name,'78.txt']);
coalitions8 = importdata(['coalitions',name,'88.txt']);
coalitions9 = importdata(['coalitions',name,'98.txt']);
coalitions10 = importdata(['coalitions',name,'108.txt']);

name2 = 'HARDSYNCHTEST'

agscore1 = importdata(['score',name2,'18.txt']);
agscore2 = importdata(['score',name2,'28.txt']);
agscore3 = importdata(['score',name2,'38.txt']);
agscore4 = importdata(['score',name2,'48.txt']);
agscore5 = importdata(['score',name2,'58.txt']);
score6 = importdata(['score',name2,'68.txt']);
score7 = importdata(['score',name2,'78.txt']);
score8 = importdata(['score',name2,'88.txt']);
score9 = importdata(['score',name2,'98.txt']);
score10 = importdata(['score',name2,'108.txt']);
 
cost1 = importdata(['cost',name2,'18.txt']);
cost2 = importdata(['cost',name2,'28.txt']);
cost3 = importdata(['cost',name2,'38.txt']);
cost4 = importdata(['cost',name2,'48.txt']);
cost5 = importdata(['cost',name2,'58.txt']);
cost6 = importdata(['cost',name2,'68.txt']);
cost7 = importdata(['cost',name2,'78.txt']);
cost8 = importdata(['cost',name2,'88.txt']);
cost9 = importdata(['cost',name2,'98.txt']);
cost10 = importdata(['cost',name2,'108.txt']);
 
 
coalitions1 = importdata(['coalitions',name2,'18.txt']);
coalitions2 = importdata(['coalitions',name2,'28.txt']);
coalitions3 = importdata(['coalitions',name2,'38.txt']);
coalitions4 = importdata(['coalitions',name2,'48.txt']);
coalitions5 = importdata(['coalitions',name2,'58.txt']);
coalitions6 = importdata(['coalitions',name2,'68.txt']);
coalitions7 = importdata(['coalitions',name2,'78.txt']);
coalitions8 = importdata(['coalitions',name2,'88.txt']);
coalitions9 = importdata(['coalitions',name2,'98.txt']);
coalitions10 = importdata(['coalitions',name2,'108.txt']);


number_bugs1 = 9;
number_tasks1 = 30;
avgCostPerbug1 = 8/2;
total_score1 = 30000;
% 


 [C01,D0] = extractDataCoalitions(coalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore01, DesVTipica] = extractDataScore(score1, number_bugs1, total_score1);
SolutionArrayCost01 = extractDataCost(cost1, number_bugs1, avgCostPerbug1);

 [C02,D0] = extractDataCoalitions(coalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore02, DesVTipica] = extractDataScore(score2, number_bugs1, total_score1);
SolutionArrayCost02 = extractDataCost(cost2, number_bugs1, avgCostPerbug1);

 [C03,D0] = extractDataCoalitions(coalitions3, number_bugs1, number_tasks1);
[SolutionArrayScore03, DesVTipica] = extractDataScore(score3, number_bugs1, total_score1);
SolutionArrayCost03 = extractDataCost(cost3, number_bugs1, avgCostPerbug1);

 [C04,D0] = extractDataCoalitions(coalitions4, number_bugs1, number_tasks1);
[SolutionArrayScore04, DesVTipica] = extractDataScore(score4, number_bugs1, total_score1);
SolutionArrayCost04 = extractDataCost(cost4, number_bugs1, avgCostPerbug1);
 
[C05,D0] = extractDataCoalitions(coalitions5, number_bugs1, number_tasks1);
[SolutionArrayScore05, DesVTipica] = extractDataScore(score5, number_bugs1, total_score1);
SolutionArrayCost05 = extractDataCost(cost5, number_bugs1, avgCostPerbug1);
 
[C06,D0] = extractDataCoalitions(coalitions6, number_bugs1, number_tasks1);
[SolutionArrayScore06, DesVTipica] = extractDataScore(score6, number_bugs1, total_score1);
SolutionArrayCost06 = extractDataCost(cost6, number_bugs1, avgCostPerbug1);

[C07,D0] = extractDataCoalitions(coalitions7, number_bugs1, number_tasks1);
[SolutionArrayScore07, DesVTipica] = extractDataScore(score7, number_bugs1, total_score1);
SolutionArrayCost07 = extractDataCost(cost7, number_bugs1, avgCostPerbug1);

Coal1{1} = C01;
Coal1{2} = C02;
Coal1{3} = C03;
Coal1{4} = C04;
Coal1{5} = C05;
Coal1{6} = C06;
Coal1{7} = C07;

Cost1{1} = SolutionArrayCost01;
Cost1{2} = SolutionArrayCost02;
Cost1{3} = SolutionArrayCost03;
Cost1{4} = SolutionArrayCost04;
Cost1{5} = SolutionArrayCost05;
Cost1{6} = SolutionArrayCost06;
Cost1{7} = SolutionArrayCost07;

Score1{1} = SolutionArrayScore01;
Score1{2} = SolutionArrayScore02;
Score1{3} = SolutionArrayScore03;
Score1{4} = SolutionArrayScore04;
Score1{5} = SolutionArrayScore05;
Score1{6} = SolutionArrayScore06;
Score1{7} = SolutionArrayScore07;
 
k = 1;
T1 = [];
for i = 1:7
    T1{i} = getData(Coal1{i},Score1{i},Cost1{i},total_score1,number_bugs1,avgCostPerbug1);
    
end
m = 32;
for i=1:7
    
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,7);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4);
   
end

boxplot(Z);

% figure
% boxplot(X,'Labels',{'\beta = 450','\beta = 550','\beta = 650','\beta = 750','\beta = 850','\beta = 950'});
% title('Total Score Achieved before Dying / Total Score of The Scenario');
% xlabel('\beta factor');
% hold on
% boxplot(X2,'Labels',{'\beta = 450','\beta = 550','\beta = 650','\beta = 750','\beta = 850','\beta = 950'});
% title('Total Score Achieved before Dying / Total Score of The Scenario');
% xlabel('\beta factor');
% figure
% boxplot(Y,'Labels',{'\beta = 450','\beta = 550','\beta = 650','\beta = 750','\beta = 850','\beta = 950'});
% title('Total Cost Paid before Dying / Amout of resources per agent');
% xlabel('\beta factor');
% hold on
% boxplot(Y2,'Labels',{'\beta = 450','\beta = 550','\beta = 650','\beta = 750','\beta = 850','\beta = 950'});
% title('Total Cost Paid before Dying / Amout of resources per agent');
% xlabel('\beta factor');
x=[1,2,3,4,5,6,7];

figure
plot(x,X,'--*');
xlabel('score');
hold on

figure
plot(x,Z,'-o');
xlabel('utility');

figure
plot(x,Y,'-o');
xlabel('cost');



