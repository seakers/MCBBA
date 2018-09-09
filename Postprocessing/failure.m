%Data 1
close all;
clear all;
score2999 = importdata('score2999.txt');
score2950 = importdata('score2950.txt');
score2750 = importdata('score2750.txt');
score2650 = importdata('score2650.txt');
score2450 = importdata('score2450.txt');
score2250 = importdata('score2250.txt');
score2150 = importdata('score2150.txt');
score2050 = importdata('score2050.txt');

cost2999 = importdata('cost2999.txt');
cost2950 = importdata('cost2950.txt');
cost2750 = importdata('cost2750.txt');
cost2650 = importdata('cost2650.txt');
cost2450 = importdata('cost2450.txt');
cost2250 = importdata('cost2250.txt');
cost2150 = importdata('cost2150.txt');
cost2050 = importdata('cost2050.txt');



score6999 = importdata('score6999.txt');
score6950 = importdata('score6950.txt');
score6750 = importdata('score6750.txt');
score6650 = importdata('score6650.txt');
score6450 = importdata('score6450.txt');
score6250 = importdata('score6250.txt');
score6150 = importdata('score6150.txt');

cost6999 = importdata('cost6999.txt');
cost6950 = importdata('cost6950.txt');
cost6750 = importdata('cost6750.txt');
cost6650 = importdata('cost6650.txt');
cost6450 = importdata('cost6450.txt');
cost6250 = importdata('cost6250.txt');
cost6150 = importdata('cost6150.txt');

number_bugs1 = 2;
number_tasks1 = 30;
avgCostPerbug1 = 8/2;
total_score1 = 120000;
% %Data 
number_bugs2 = 6;
number_tasks2 = 30;
avgCostPerbug2 = 1.3333333;
total_score2 = 120000;

[SolutionArrayScore00, DesVTipica] = extractDataScore(score2050, number_bugs1, total_score1);
SolutionArrayCost00 = extractDataCost(cost2050, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore01, DesVTipica] = extractDataScore(score2150, number_bugs1, total_score1);
SolutionArrayCost01 = extractDataCost(cost2150, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore02, DesVTipica] = extractDataScore(score2250, number_bugs1, total_score1);
SolutionArrayCost02 = extractDataCost(cost2250, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore03, DesVTipica] = extractDataScore(score2450, number_bugs1, total_score1);
SolutionArrayCost03 = extractDataCost(cost2450, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore04, DesVTipica] = extractDataScore(score2650, number_bugs1, total_score1);
SolutionArrayCost04 = extractDataCost(cost2650, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore05, DesVTipica] = extractDataScore(score2750, number_bugs1, total_score1);
SolutionArrayCost05 = extractDataCost(cost2750, number_bugs1, avgCostPerbug1);
 
[SolutionArrayScore06, DesVTipica] = extractDataScore(score2950, number_bugs1, total_score1);
SolutionArrayCost06 = extractDataCost(cost2950, number_bugs1, avgCostPerbug1);

[SolutionArrayScore07, DesVTipica] = extractDataScore(score2999, number_bugs1, total_score1);
SolutionArrayCost07 = extractDataCost(cost2999, number_bugs1, avgCostPerbug1);

[SolutionArrayScore60, DesVTipica] = extractDataScore(score6150, number_bugs2, total_score1);
SolutionArrayCost60 = extractDataCost(cost6150, number_bugs2, avgCostPerbug2);
 
[SolutionArrayScore61, DesVTipica] = extractDataScore(score6250, number_bugs2, total_score1);
SolutionArrayCost61 = extractDataCost(cost6250, number_bugs2, avgCostPerbug2);
 
[SolutionArrayScore62, DesVTipica] = extractDataScore(score6450, number_bugs2, total_score1);
SolutionArrayCost62 = extractDataCost(cost6450, number_bugs2, avgCostPerbug2);
 
[SolutionArrayScore63, DesVTipica] = extractDataScore(score6650, number_bugs2, total_score1);
SolutionArrayCost63 = extractDataCost(cost6650, number_bugs2, avgCostPerbug2);
 
[SolutionArrayScore64, DesVTipica] = extractDataScore(score6950, number_bugs2, total_score1);
SolutionArrayCost64 = extractDataCost(cost6950, number_bugs2, avgCostPerbug2);
 
[SolutionArrayScore65, DesVTipica] = extractDataScore(score6950, number_bugs2, total_score1);
SolutionArrayCost65 = extractDataCost(cost6950, number_bugs2, avgCostPerbug2);

 
[SolutionArrayScore66, DesVTipica] = extractDataScore(score6999, number_bugs2, total_score1);
SolutionArrayCost66 = extractDataCost(cost6999, number_bugs2, avgCostPerbug2);

Cost1{1} = SolutionArrayCost00;
Cost1{2} = SolutionArrayCost01;
Cost1{3} = SolutionArrayCost02;
Cost1{4} = SolutionArrayCost03;
Cost1{5} = SolutionArrayCost04;
Cost1{6} = SolutionArrayCost05;
Cost1{7} = SolutionArrayCost06;
Cost1{8} = SolutionArrayCost07;

Score1{1} = SolutionArrayScore00;
Score1{2} = SolutionArrayScore01;
Score1{3} = SolutionArrayScore02;
Score1{4} = SolutionArrayScore03;
Score1{5} = SolutionArrayScore04;
Score1{6} = SolutionArrayScore05; 
Score1{7} = SolutionArrayScore06;
Score1{8} = SolutionArrayScore07; 


Cost2{1} = SolutionArrayCost60;
Cost2{2} = SolutionArrayCost61;
Cost2{3} = SolutionArrayCost62;
Cost2{4} = SolutionArrayCost63;
Cost2{5} = SolutionArrayCost64;
Cost2{6} = SolutionArrayCost65;
Cost2{7} = SolutionArrayCost66;


Score2{1} = SolutionArrayScore60;
Score2{2} = SolutionArrayScore61;
Score2{3} = SolutionArrayScore62;
Score2{4} = SolutionArrayScore63;
Score2{5} = SolutionArrayScore64;
Score2{6} = SolutionArrayScore65;
Score2{7} = SolutionArrayScore66;


k = 1;
T1 = [];
for i = 1:8
    T1{i} = getData2(Score1{i},Cost1{i},total_score1,number_bugs1,avgCostPerbug1);
    if(i ~= 8)
    T2{i} = getData2(Score2{i},Cost2{i},total_score2,number_bugs2,avgCostPerbug2);
    end
end
m = 60;
for i=1:7
    X(:,i) = T1{i}(1:m,2);
    Y(:,i) = T1{i}(1:m,3);
    X2(:,i) = T2{i}(1:m,2);
    Y2(:,i) = T2{i}(1:m,3);
end
 X(:,8) = T1{8}(1:m,2);
    Y(:,8) = T1{8}(1:m,3);
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
x=[50,150,250,450,650,750,950,1050];
x2 = [150,250,450,650,750,950,1050];
figure
plot(x,mean(X),'--*');
hold on
plot(x2,mean(X2),'--*');
figure
plot(x,mean(Y),'-o');
hold on
plot(x2,mean(Y2),'-o');



