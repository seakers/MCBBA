%Data 1
close all;
clear all;
name = 'SYNCHPH';
score1 = importdata('scoreCDTEST.txt');
score2 = importdata('scoreCENTRALISEDCDTEST.txt');


cost1 = importdata('costCDTEST.txt');
cost2 = importdata('costCENTRALISEDCDTEST.txt');

coalitions1 = importdata('coalitionsCDTEST.txt');
coalitions2 = importdata('coalitionsCENTRALISEDCDTEST.txt');



number_bugs1 = 4;
number_tasks1 = 12;
avgCostPerbug1 = 4/3;
total_score1 = 30000;
% 


 [C01,D0] = extractDataCoalitions(coalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore01, DesVTipica] = extractDataScore(score1, number_bugs1, total_score1);
SolutionArrayCost01 = extractDataCost(cost1, number_bugs1, avgCostPerbug1);

 [C02,D0] = extractDataCoalitions(coalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore02, DesVTipica] = extractDataScore(score2, number_bugs1, total_score1);
SolutionArrayCost02 = extractDataCostCentralised(cost2, number_bugs1, avgCostPerbug1);


Coal1{1} = C01;
Coal1{2} = C02;

Cost1{1} = SolutionArrayCost01;
Cost1{2} = SolutionArrayCost02;


Score1{1} = SolutionArrayScore01;
Score1{2} = SolutionArrayScore02;

 
k = 1;
T1 = [];
for i = 1:2
    T1{i} = getData(Coal1{i},Score1{i},Cost1{i},total_score1,number_bugs1,avgCostPerbug1);
    
end
m = 20;
for i=1:2
    
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,7);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4);
   
end



% figure
% handles20 = boxplot(X,'Labels',{'With CoalitionTest','Without CoalitionTest'})
% 
% figure
% handles21 = boxplot(Y,'Labels',{'With CoalitionTest','Without CoalitionTest'})
% 
% figure
handles21 = boxplot(Z,'Labels',{'Distributed','Centralized'})
ylabel('Utility/Total Score of the scenario');
ylim([0,1]);