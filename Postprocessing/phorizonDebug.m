%Data 1
close all;
clear all;
name = 'PH2TEST4AG';
score1 = importdata(['score',name,'1.txt']);

cost1 = importdata(['cost',name,'1.txt']);

coalitions1 = importdata(['coalitions',name,'1.txt']);
score2 = importdata(['score',name,'8.txt']);

cost2 = importdata(['cost',name,'8.txt']);

coalitions2 = importdata(['coalitions',name,'8.txt']);

number_bugs1 = 4;
number_tasks1 = 12;
avgCostPerbug1 = 8/2;
total_score1 = 10000;
% 


 [C01,D0] = extractDataCoalitions(coalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore01, DesVTipica] = extractDataScore(score1, number_bugs1, total_score1);
SolutionArrayCost01 = extractDataCost(cost1, number_bugs1, avgCostPerbug1);

 [C02,D0] = extractDataCoalitions(coalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore02, DesVTipica] = extractDataScore(score2, number_bugs1, total_score1);
SolutionArrayCost02 = extractDataCost(cost2, number_bugs1, avgCostPerbug1);

Coal1{1} = C01;
Coal1{2} = C02;
% Coal1{3} = C03;
% Coal1{4} = C04;
% Coal1{5} = C05;
% Coal1{6} = C06;
% Coal1{7} = C07;


Cost1{1} = SolutionArrayCost01;
Cost1{2} = SolutionArrayCost02;


Score1{1} = SolutionArrayScore01;
Score1{2} = SolutionArrayScore02;

 T1 = [];
 T1{1} = getData(Coal1{1},Score1{1},Cost1{1});
 T1{2} = getData(Coal1{2},Score1{2},Cost1{2});
% k = 1;
% T1 = [];
% for i = 2:8
%     T1{i} = getData(Coal1{i},Score1{i},Cost1{i});
%     
% end
% m = 60;
% for i=2:8
%     
%     X(:,i-1) = T1{i}(1:m,6);
%     Y(:,i-1) = T1{i}(1:m,9);
%     Z(:,i-1) = T1{i}(1:m,8);
%     W(:,i-1) = T1{i}(1:m,4);
%    
% end

%boxplot(X,'Labels',{'0','2','4','6','8','\infty'});

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
% x=[1,2,3,4,5,6,7];
% 
% figure
% plot(x,X,'--*');
% hold on
% 
% figure
% plot(x,Y,'-o');