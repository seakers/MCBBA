%mergeAnalysis
close all;
coalitions70 = importdata('coalitions70.txt');
coalitions71 = importdata('coalitions71.txt');
coalitions72 = importdata('coalitions72.txt');
coalitions73 = importdata('coalitions73.txt');
coalitions74 = importdata('coalitions74.txt');
coalitions75 = importdata('coalitions75.txt');
coalitions76 = importdata('coalitions76.txt');
cost70 = importdata('cost70.txt');
cost71 = importdata('cost71.txt');
cost72 = importdata('cost72.txt');
cost73 = importdata('cost73.txt');
cost74 = importdata('cost74.txt');
cost75 = importdata('cost75.txt');
cost76 = importdata('cost76.txt');
score70 = importdata('score70.txt');
score71 = importdata('score71.txt');
score72 = importdata('score72.txt');
score73 = importdata('score73.txt');
score74 = importdata('score74.txt');
score75 = importdata('score75.txt');
score76 = importdata('score76.txt');
number_bugs1 = 6;
number_tasks1 = 30;
avgCostPerbug1 = 233.333333;
total_score1 = 30000;
xvector = [0,20,40,60,80,100,200]/2;
% %Data % Points
Coal0 = coalitions70;
Coal1 = coalitions71;
Coal2 = coalitions72;
Coal3 = coalitions73;
Coal4 = coalitions74;
Coal5 = coalitions75;
Coal6 = coalitions76;
Cost0 = cost70;
Cost1 = cost71;
Cost2 = cost72;
Cost3 = cost73;
Cost4 = cost74;
Cost5 = cost75;
Cost6 = cost76;
Score0 = score70;
Score1 = score71;
Score2 = score72;
Score3 = score73;
Score4 = score74;
Score5 = score75;
Score6 = score76;

[C0,D0] = extractDataCoalitions(Coal0, number_bugs1, number_tasks1);
[SolutionArrayScore0, DesVTipica] = extractDataScore(Score0, number_bugs1, total_score1);
SolutionArrayCost0 = extractDataCost(Cost0, number_bugs1, avgCostPerbug1);

[C1,D1] = extractDataCoalitions(Coal1, number_bugs1, number_tasks1);
[SolutionArrayScore1, DesVTipica] = extractDataScore(Score1, number_bugs1, total_score1);
SolutionArrayCost1 = extractDataCost(Cost1, number_bugs1, avgCostPerbug1);

[C2,D2] = extractDataCoalitions(Coal2, number_bugs1, number_tasks1);
[SolutionArrayScore2, DesVTipica] = extractDataScore(Score2, number_bugs1, total_score1);
SolutionArrayCost2 = extractDataCost(Cost2, number_bugs1, avgCostPerbug1);

[C3,D3] = extractDataCoalitions(Coal3, number_bugs1, number_tasks1);
[SolutionArrayScore3, DesVTipica] = extractDataScore(Score3, number_bugs1, total_score1);
SolutionArrayCost3 = extractDataCost(Cost3, number_bugs1, avgCostPerbug1);

[C4,D4] = extractDataCoalitions(Coal4, number_bugs1, number_tasks1);
[SolutionArrayScore4, DesVTipica] = extractDataScore(Score4, number_bugs1, total_score1);
SolutionArrayCost4 = extractDataCost(Cost4, number_bugs1, avgCostPerbug1);

[C5,D5] = extractDataCoalitions(Coal5, number_bugs1, number_tasks1);
[SolutionArrayScore5, DesVTipica] = extractDataScore(Score5, number_bugs1, total_score1);
SolutionArrayCost5 = extractDataCost(Cost5, number_bugs1, avgCostPerbug1);

[C6,D6] = extractDataCoalitions(Coal6, number_bugs1, number_tasks1);
[SolutionArrayScore6, DesVTipica] = extractDataScore(Score6, number_bugs1, total_score1);
SolutionArrayCost6 = extractDataCost(Cost6, number_bugs1, avgCostPerbug1);

T0 = getData (C0,SolutionArrayScore0,SolutionArrayCost0,total_score1,number_bugs1,avgCostPerbug1);
T1 = getData (C1,SolutionArrayScore1,SolutionArrayCost1,total_score1,number_bugs1,avgCostPerbug1);
T2 = getData (C2,SolutionArrayScore2,SolutionArrayCost2,total_score1,number_bugs1,avgCostPerbug1);
T3 = getData (C3,SolutionArrayScore3,SolutionArrayCost3,total_score1,number_bugs1,avgCostPerbug1);
T4 = getData (C4,SolutionArrayScore4,SolutionArrayCost4,total_score1,number_bugs1,avgCostPerbug1);
T5 = getData (C5,SolutionArrayScore5,SolutionArrayCost5,total_score1,number_bugs1,avgCostPerbug1);
T6 = getData (C6,SolutionArrayScore6,SolutionArrayCost6,total_score1,number_bugs1,avgCostPerbug1);
% 
TTOTAl = zeros(7,8);
TTOTAL(1,:) = T0;
TTOTAL(2,:) = T1;
TTOTAL(3,:) = T2;
TTOTAL(4,:) = T3;
TTOTAL(5,:) = T4;
TTOTAL(6,:) = T5;
TTOTAL(7,:) = T6;
%Score
a = figure 
plot(xvector,TTOTAL(:,6),'-o');
title('Score as a function of Merge Cost (Split cost = 0)');
xlabel('Merge Cost (% total resources per agent)');
ylabel('Score/Total Score Scenario');
saveas(a,'scoreMerge')
%Cost
b = figure 
plot(xvector,TTOTAL(:,7)*total_score1/(number_bugs1*avgCostPerbug1),'-o');
title('Cost as a function of Merge Cost (Split cost = 0)');
xlabel('Merge Cost (% total resources per agent)');
ylabel('Cost/Total Score Scenario');
saveas(b,'costMerge.jpg')
%Cost
c = figure 
plot(xvector,TTOTAL(:,8),'-o');
title('Benefit as a function of Merge Cost (Split cost = 0)');
xlabel('Merge Cost');
ylabel('Score-Cost / Total Score Scenario');
saveas(c,'benefitMerge.jpg')
%Coalitions
d = figure 
plot(xvector,TTOTAL(:,3:5),'-o');
title('Coalitions as a function of Merge Cost ');
xlabel('Merge Cost (% total resources per agent)');
ylabel('Number of tasks done');
legend('Tasks done with 1 Sensor','Tasks done with 2 Sensors','Tasks done with 3 sensors');
saveas(d,'coalitionsMerge')