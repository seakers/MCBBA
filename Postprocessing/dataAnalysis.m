%Data 1
%close all;
score30000 = importdata('score30000.txt');
score30001 = importdata('score30001.txt');
score30002 = importdata('score30002.txt');


cost30000 = importdata('cost30000.txt');
cost30001 = importdata('cost30001.txt');
cost30002 = importdata('cost30002.txt');


coalitions30000 = importdata('coalitions30000.txt');
coalitions30001 = importdata('coalitions30001.txt');
coalitions30002 = importdata('coalitions30002.txt');

number_bugs1 = 6;
number_tasks1 = 30;
avgCostPerbug1 = 8/2;
Coal1 = coalitions30001;
Cost1 = cost30001;
Score1 = score30001;
total_score1 = 30000;
% %Data 
number_bugs2 = 3;
number_tasks2 = 30;
avgCostPerbug2 = 8;
Coal2 = coalitions30000;
Cost2 = cost30000;
Score2 = score30000;
total_score2 = 30000;
% %Data 3
number_bugs3 = 9;
number_tasks3 = 30;
avgCostPerbug3 = 8/3;
Coal3 = coalitions30002;
Cost3 = cost30002;
Score3 = score30002;
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
boxplot([T2(1:m,6),T(1:m,6),T3(1:m,6)],'Labels',{'SuperSensors','2','3'});
title('Total Score Achieved before Dying / Total Score of The Scenario');
xlabel('Type');
figure
boxplot([T2(1:m,7),T(1:m,7),T3(1:m,7)],'Labels',{'SuperSensors','2','3'});
title('Total Cost before Dying / Total Score of The Scenario');
xlabel('Type');
figure
boxplot([T2(1:m,8),T(1:m,8),T3(1:m,8)],'Labels',{'SuperSensors','2','3'});
title('Score - Cost / Total Score of The Scenario');
xlabel('Type');

        
        
        
    

