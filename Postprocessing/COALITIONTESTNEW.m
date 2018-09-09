%Data 1
close all;
clear all;
name = 'SYNCHPH';
score1 = importdata('scoreCOALITIONTESTNEW.txt');
score2 = importdata('scoreNOTCOALITIONTESTNEW.txt');


cost1 = importdata('costCOALITIONTESTNEW.txt');
cost2 = importdata('costNOTCOALITIONTESTNEW.txt');

coalitions1 = importdata('coalitionsCOALITIONTESTNEW.txt');
coalitions2 = importdata('coalitionsNOTCOALITIONTESTNEW.txt');



number_bugs1 = 6;
number_tasks1 = 30;
avgCostPerbug1 = 4/3;
total_score1 = 30000;
% 


 [C01,D0] = extractDataCoalitions(coalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore01, DesVTipica] = extractDataScore(score1, number_bugs1, total_score1);
SolutionArrayCost01 = extractDataCost(cost1, number_bugs1, avgCostPerbug1);

 [C02,D0] = extractDataCoalitions(coalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore02, DesVTipica] = extractDataScore(score2, number_bugs1, total_score1);
SolutionArrayCost02 = extractDataCost(cost2, number_bugs1, avgCostPerbug1);

[CTEST1,D0] = extractDataCoalitionsTEST(coalitions1, number_bugs1, number_tasks1);
[CTEST2,D0] = extractDataCoalitionsTEST(coalitions2, number_bugs1, number_tasks1);

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
m = 62;
for i=1:2
    
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,7);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4);
   
end
nb = m;

GR(:,1) = CTEST1(1:nb,12)/60;
GR(:,2) = CTEST2(1:nb,12)/60;

% figure
% handles20 = boxplot(X,'Labels',{'With CoalitionTest','Without CoalitionTest'})
% 
% figure
% handles21 = boxplot(Y,'Labels',{'With CoalitionTest','Without CoalitionTest'})


figure

 ylim([-0.1 1.1])
 
 h(1) = subplot(1,2,1)
handles11 = boxplot(GR,'Labels',{'With CoalitionTest','Without CoalitionTest'});
ylabel({'% of subtasks done',' with sensor waste'});
set(handles11,{'linew'},{1.5})

h(2) = subplot(1,2,2)
handles21 = boxplot(Z,'Labels',{'With CoalitionTest','Without CoalitionTest'})
ylabel({'Utility/','Total Score'});
set(handles21,{'linew'},{1.5})


ampliar = 0.065;
height = 3;
bottom = 2;
p1 = get(h(1), 'pos');
p2 = get(h(2), 'pos');
p1(height) = p1(height) + ampliar;
p2(height) = p2(height) + ampliar;
%p2(bottom) = p2(bottom) + 0.05;

set(h(1), 'pos', p1);
set(h(2), 'pos', p2);

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