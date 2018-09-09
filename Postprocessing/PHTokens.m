%Data 1
close all;
clear all;
name = 'SYNCHTEST';
score1 = importdata(['score',name,'11.txt']);
score2 = importdata(['score',name,'21.txt']);
score3 = importdata(['score',name,'12.txt']);
score4 = importdata(['score',name,'22.txt']);
score5 = importdata(['score',name,'42.txt']);
score6 = importdata(['score',name,'23.txt']);
score7 = importdata(['score',name,'33.txt']);
score8 = importdata(['score',name,'53.txt']);
score9 = importdata(['score',name,'24.txt']);
score10 = importdata(['score',name,'44.txt']);
score11 = importdata(['score',name,'84.txt']);
score12 = importdata(['score',name,'35.txt']);
score13 = importdata(['score',name,'55.txt']);
score14 = importdata(['score',name,'85.txt']);
score15 = importdata(['score',name,'46.txt']);
score16 = importdata(['score',name,'66.txt']);
score17 = importdata(['score',name,'47.txt']);
score18 = importdata(['score',name,'77.txt']);
score19 = importdata(['score',name,'48.txt']);
score20 = importdata(['score',name,'88.txt']);

cost1 = importdata(['cost',name,'11.txt']);
cost2 = importdata(['cost',name,'21.txt']);
cost3 = importdata(['cost',name,'12.txt']);
cost4 = importdata(['cost',name,'22.txt']);
cost5 = importdata(['cost',name,'42.txt']);
cost6 = importdata(['cost',name,'23.txt']);
cost7 = importdata(['cost',name,'33.txt']);
cost8 = importdata(['cost',name,'53.txt']);
cost9 = importdata(['cost',name,'24.txt']);
cost10 = importdata(['cost',name,'44.txt']);
cost11 = importdata(['cost',name,'84.txt']);
cost12 = importdata(['cost',name,'35.txt']);
cost13 = importdata(['cost',name,'55.txt']);
cost14 = importdata(['cost',name,'85.txt']);
cost15 = importdata(['cost',name,'46.txt']);
cost16 = importdata(['cost',name,'66.txt']);
cost17 = importdata(['cost',name,'47.txt']);
cost18 = importdata(['cost',name,'77.txt']);
cost19 = importdata(['cost',name,'48.txt']);
cost20 = importdata(['cost',name,'88.txt']);

coalitions1 = importdata(['coalitions',name,'11.txt']);
coalitions2 = importdata(['coalitions',name,'21.txt']);
coalitions3 = importdata(['coalitions',name,'12.txt']);
coalitions4 = importdata(['coalitions',name,'22.txt']);
coalitions5 = importdata(['coalitions',name,'42.txt']);
coalitions6 = importdata(['coalitions',name,'23.txt']);
coalitions7 = importdata(['coalitions',name,'33.txt']);
coalitions8 = importdata(['coalitions',name,'53.txt']);
coalitions9 = importdata(['coalitions',name,'24.txt']);
coalitions10 = importdata(['coalitions',name,'44.txt']);
coalitions11 = importdata(['coalitions',name,'84.txt']);
coalitions12 = importdata(['coalitions',name,'35.txt']);
coalitions13 = importdata(['coalitions',name,'55.txt']);
coalitions14 = importdata(['coalitions',name,'85.txt']);
coalitions15 = importdata(['coalitions',name,'46.txt']);
coalitions16 = importdata(['coalitions',name,'66.txt']);
coalitions17 = importdata(['coalitions',name,'47.txt']);
coalitions18 = importdata(['coalitions',name,'77.txt']);
coalitions19 = importdata(['coalitions',name,'48.txt']);
coalitions20 = importdata(['coalitions',name,'88.txt']);



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

[C08,D0] = extractDataCoalitions(coalitions8, number_bugs1, number_tasks1);
[SolutionArrayScore08, DesVTipica] = extractDataScore(score8, number_bugs1, total_score1);
SolutionArrayCost08 = extractDataCost(cost8, number_bugs1, avgCostPerbug1);

[C09,D0] = extractDataCoalitions(coalitions9, number_bugs1, number_tasks1);
[SolutionArrayScore09, DesVTipica] = extractDataScore(score9, number_bugs1, total_score1);
SolutionArrayCost09 = extractDataCost(cost9, number_bugs1, avgCostPerbug1);

[C010,D0] = extractDataCoalitions(coalitions10, number_bugs1, number_tasks1);
[SolutionArrayScore010, DesVTipica] = extractDataScore(score10, number_bugs1, total_score1);
SolutionArrayCost010 = extractDataCost(cost10, number_bugs1, avgCostPerbug1);

[C011,D0] = extractDataCoalitions(coalitions11, number_bugs1, number_tasks1);
[SolutionArrayScore011, DesVTipica] = extractDataScore(score11, number_bugs1, total_score1);
SolutionArrayCost011 = extractDataCost(cost11, number_bugs1, avgCostPerbug1);

[C012,D0] = extractDataCoalitions(coalitions12, number_bugs1, number_tasks1);
[SolutionArrayScore012, DesVTipica] = extractDataScore(score12, number_bugs1, total_score1);
SolutionArrayCost012 = extractDataCost(cost12, number_bugs1, avgCostPerbug1);

[C013,D0] = extractDataCoalitions(coalitions13, number_bugs1, number_tasks1);
[SolutionArrayScore013, DesVTipica] = extractDataScore(score13, number_bugs1, total_score1);
SolutionArrayCost013 = extractDataCost(cost13, number_bugs1, avgCostPerbug1);

[C014,D0] = extractDataCoalitions(coalitions14, number_bugs1, number_tasks1);
[SolutionArrayScore014, DesVTipica] = extractDataScore(score14, number_bugs1, total_score1);
SolutionArrayCost014 = extractDataCost(cost14, number_bugs1, avgCostPerbug1);

[C015,D0] = extractDataCoalitions(coalitions15, number_bugs1, number_tasks1);
[SolutionArrayScore015, DesVTipica] = extractDataScore(score15, number_bugs1, total_score1);
SolutionArrayCost015 = extractDataCost(cost15, number_bugs1, avgCostPerbug1);

[C016,D0] = extractDataCoalitions(coalitions16, number_bugs1, number_tasks1);
[SolutionArrayScore016, DesVTipica] = extractDataScore(score16, number_bugs1, total_score1);
SolutionArrayCost016 = extractDataCost(cost16, number_bugs1, avgCostPerbug1);

[C017,D0] = extractDataCoalitions(coalitions17, number_bugs1, number_tasks1);
[SolutionArrayScore017, DesVTipica] = extractDataScore(score17, number_bugs1, total_score1);
SolutionArrayCost017 = extractDataCost(cost17, number_bugs1, avgCostPerbug1);

[C018,D0] = extractDataCoalitions(coalitions18, number_bugs1, number_tasks1);
[SolutionArrayScore018, DesVTipica] = extractDataScore(score18, number_bugs1, total_score1);
SolutionArrayCost018 = extractDataCost(cost18, number_bugs1, avgCostPerbug1);

[C019,D0] = extractDataCoalitions(coalitions19, number_bugs1, number_tasks1);
[SolutionArrayScore019, DesVTipica] = extractDataScore(score19, number_bugs1, total_score1);
SolutionArrayCost019 = extractDataCost(cost19, number_bugs1, avgCostPerbug1);

[C020,D0] = extractDataCoalitions(coalitions20, number_bugs1, number_tasks1);
[SolutionArrayScore020, DesVTipica] = extractDataScore(score20, number_bugs1, total_score1);
SolutionArrayCost020 = extractDataCost(cost20, number_bugs1, avgCostPerbug1);

Coal1{1} = C01;
Coal1{2} = C02;
Coal1{3} = C03;
Coal1{4} = C04;
Coal1{5} = C05;
Coal1{6} = C06;
Coal1{7} = C07;
Coal1{8} = C08;
Coal1{9} = C09;
Coal1{10} = C010;
Coal1{11} = C011;
Coal1{12} = C012;
Coal1{13} = C013;
Coal1{14} = C014;
Coal1{15} = C015;
Coal1{16} = C016;
Coal1{17} = C017;
Coal1{18} = C018;
Coal1{19} = C019;
Coal1{20} = C020;

Cost1{1} = SolutionArrayCost01;
Cost1{2} = SolutionArrayCost02;
Cost1{3} = SolutionArrayCost03;
Cost1{4} = SolutionArrayCost04;
Cost1{5} = SolutionArrayCost05;
Cost1{6} = SolutionArrayCost06;
Cost1{7} = SolutionArrayCost07;
Cost1{8} = SolutionArrayCost08;
Cost1{9} = SolutionArrayCost09;
Cost1{10} = SolutionArrayCost010;
Cost1{11} = SolutionArrayCost011;
Cost1{12} = SolutionArrayCost012;
Cost1{13} = SolutionArrayCost013;
Cost1{14} = SolutionArrayCost014;
Cost1{15} = SolutionArrayCost015;
Cost1{16} = SolutionArrayCost016;
Cost1{17} = SolutionArrayCost017;
Cost1{18} = SolutionArrayCost018;
Cost1{19} = SolutionArrayCost019;
Cost1{20} = SolutionArrayCost020;

Score1{1} = SolutionArrayScore01;
Score1{2} = SolutionArrayScore02;
Score1{3} = SolutionArrayScore03;
Score1{4} = SolutionArrayScore04;
Score1{5} = SolutionArrayScore05;
Score1{6} = SolutionArrayScore06;
Score1{7} = SolutionArrayScore07;
Score1{8} = SolutionArrayScore08;
Score1{9} = SolutionArrayScore09;
Score1{10} = SolutionArrayScore010;
Score1{11} = SolutionArrayScore011;
Score1{12} = SolutionArrayScore012;
Score1{13} = SolutionArrayScore013;
Score1{14} = SolutionArrayScore014;
Score1{15} = SolutionArrayScore015;
Score1{16} = SolutionArrayScore016;
Score1{17} = SolutionArrayScore017;
Score1{18} = SolutionArrayScore018;
Score1{19} = SolutionArrayScore019;
Score1{20} = SolutionArrayScore020;




 
k = 1;
T1 = [];
for i = 1:20
    T1{i} = getData(Coal1{i},Score1{i},Cost1{i},total_score1,number_bugs1,avgCostPerbug1);
    
end
m = 35;
for i=1:20
    
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,7);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4);
   
end

boxplot(X);

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



