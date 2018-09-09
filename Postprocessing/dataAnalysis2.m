%Data 1
score1 = importdata('score60000.txt');
score2 = importdata('score60101.txt');
score3 = importdata('score60102.txt');


cost1 = importdata('cost60000.txt');
cost2 = importdata('cost60101.txt');
cost3 = importdata('cost60102.txt');


coalitions1 = importdata('coalitions60000.txt');
coalitions2 = importdata('coalitions60101.txt');
coalitions3 = importdata('coalitions60102.txt');

close all;
number_bugs1 = 2;
number_tasks1 = 30;
avgCostPerbug1 = 8;
Coal1 = coalitions1;
Cost1 = cost1;
Score1 = score1;
total_score1 = 30000;
% %Data 
number_bugs2 = 4;
number_tasks2 = 30;
avgCostPerbug2 = 8/2;
Coal2 = coalitions2;
Cost2 = cost2;
Score2 = score2;
total_score2 = 30000;
% %Data 3
number_bugs3 = 6;
number_tasks3 = 30;
avgCostPerbug3 = 8/3;
Coal3 = coalitions3;
Cost3 = cost3;
Score3 = score3;
total_score3 = 30000;
[C,D] = extractDataCoalitions(Coal1, number_bugs1, number_tasks1);
[SolutionArrayScore, DesVTipica] = extractDataScore(Score1, number_bugs1, total_score1);
SolutionArrayCost = extractDataCost(Cost1, number_bugs1, avgCostPerbug1);
k = 1;
T = [];
for i = 1:length(C(:,1))
    [tf1, indexSc] = ismember(C(i,1), SolutionArrayScore (:,3));
    [tf2, indexCo] = ismember(C(i,1), SolutionArrayCost(:,4));
    if(indexSc ~= 0 && indexCo ~= 0)
        T(k,1:5) = C(i,1:5);
        T(k,6) = SolutionArrayScore(indexSc,1);
        T(k,7) = SolutionArrayCost(indexCo,3)/total_score1;
        k = k+1;
    end
end
T(:,8) = (T(:,6) - T(:,7))/total_score1; 
[C,D] = extractDataCoalitions(Coal2, number_bugs2, number_tasks2);
[SolutionArrayScore, DesVTipica] = extractDataScore(Score2, number_bugs2, total_score2);
SolutionArrayCost = extractDataCost(Cost2, number_bugs2, avgCostPerbug2);
k = 1;
T2 = [];
for i = 1:length(C(:,1))
    [tf1, indexSc] = ismember(C(i,1), SolutionArrayScore (:,3));
    [tf2, indexCo] = ismember(C(i,1), SolutionArrayCost(:,4));
    if(indexSc ~= 0 && indexCo ~= 0)
        T2(k,1:5) = C(i,1:5);
        T2(k,6) = SolutionArrayScore(indexSc,1);
        T2(k,7) = SolutionArrayCost(indexCo,3)/total_score1;
        k = k+1;
    end
end
T2(:,8) = (T2(:,6) - T2(:,7))/total_score1; 
[C,D] = extractDataCoalitions(Coal3, number_bugs3, number_tasks3);
[SolutionArrayScore, DesVTipica] = extractDataScore(Score3, number_bugs3, total_score3);
SolutionArrayCost = extractDataCost(Cost3, number_bugs3, avgCostPerbug3);
k = 1;
T3 = [];
for i = 1:length(C(:,1))
    [tf1, indexSc] = ismember(C(i,1), SolutionArrayScore (:,3));
    [tf2, indexCo] = ismember(C(i,1), SolutionArrayCost(:,4));
    if(indexSc ~= 0 && indexCo ~= 0)
        T3(k,1:5) = C(i,1:5);
        T3(k,6) = SolutionArrayScore(indexSc,1);
        T3(k,7) = SolutionArrayCost(indexCo,3)/total_score1;
        k = k+1;
    end
end
T3(:,8) = (T3(:,6) - T3(:,7))/total_score1; 
figure
a = length(T(:,6));
b = length(T2(:,6));
c = length(T3(:,6));
m = min ([a,b,c]);
boxplot([T(1:m,6),T2(1:m,6),T3(1:m,6)],'Labels',{'SuperSensors','2','3'});
title('Total Score Achieved before Dying / Total Score of The Scenario --- Tau 100');
xlabel('Type');
figure
boxplot([T(1:m,7),T2(1:m,7),T3(1:m,7)],'Labels',{'SuperSensors','2','3'});
title('Total Cost before Dying / Total Score of The Scenario --- Tau 100');
xlabel('Type');
figure
boxplot([T(1:m,8),T2(1:m,8),T3(1:m,8)],'Labels',{'SuperSensors','2','3'});
title('Score - Cost / Total Score of The Scenario --- Tau 100');
xlabel('Type');
