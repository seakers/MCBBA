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
agscore7 = importdata(['score',name2,'78.txt']);
agscore8 = importdata(['score',name2,'88.txt']);
agscore9 = importdata(['score',name2,'98.txt']);
agscore10 = importdata(['score',name2,'108.txt']);
 
agcost1 = importdata(['cost',name2,'18.txt']);
agcost2 = importdata(['cost',name2,'28.txt']);
agcost3 = importdata(['cost',name2,'38.txt']);
agcost4 = importdata(['cost',name2,'48.txt']);
agcost5 = importdata(['cost',name2,'58.txt']);
agcost6 = importdata(['cost',name2,'68.txt']);
agcost7 = importdata(['cost',name2,'78.txt']);
agcost8 = importdata(['cost',name2,'88.txt']);
agcost9 = importdata(['cost',name2,'98.txt']);
agcost10 = importdata(['cost',name2,'108.txt']);
 
 
agcoalitions1 = importdata(['coalitions',name2,'18.txt']);
agcoalitions2 = importdata(['coalitions',name2,'28.txt']);
agcoalitions3 = importdata(['coalitions',name2,'38.txt']);
agcoalitions4 = importdata(['coalitions',name2,'48.txt']);
agcoalitions5 = importdata(['coalitions',name2,'58.txt']);
agcoalitions6 = importdata(['coalitions',name2,'68.txt']);
agcoalitions7 = importdata(['coalitions',name2,'78.txt']);
agcoalitions8 = importdata(['coalitions',name2,'88.txt']);
agcoalitions9 = importdata(['coalitions',name2,'98.txt']);
agcoalitions10 = importdata(['coalitions',name2,'108.txt']);


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
[SolutionArrayScore05, DesVTipica] = extractDataScore(score8, number_bugs1, total_score1);
SolutionArrayCost05 = extractDataCost(cost8, number_bugs1, avgCostPerbug1);
 
[C09,D0] = extractDataCoalitions(coalitions9, number_bugs1, number_tasks1);
[SolutionArrayScore06, DesVTipica] = extractDataScore(score9, number_bugs1, total_score1);
SolutionArrayCost06 = extractDataCost(cost9, number_bugs1, avgCostPerbug1);

[C010,D0] = extractDataCoalitions(coalitions10, number_bugs1, number_tasks1);
[SolutionArrayScore07, DesVTipica] = extractDataScore(score10, number_bugs1, total_score1);
SolutionArrayCost07 = extractDataCost(cost10, number_bugs1, avgCostPerbug1);


 [C11,D0] = extractDataCoalitions(agcoalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore11, DesVTipica] = extractDataScore(agscore1, number_bugs1, total_score1);
SolutionArrayCost11 = extractDataCost(agcost1, number_bugs1, avgCostPerbug1);
 
 [C12,D0] = extractDataCoalitions(agcoalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore12, DesVTipica] = extractDataScore(agscore2, number_bugs1, total_score1);
SolutionArrayCost12 = extractDataCost(agcost2, number_bugs1, avgCostPerbug1);
 
 [C13,D0] = extractDataCoalitions(agcoalitions3, number_bugs1, number_tasks1);
[SolutionArrayScore13, DesVTipica] = extractDataScore(agscore3, number_bugs1, total_score1);
SolutionArrayCost13 = extractDataCost(agcost3, number_bugs1, avgCostPerbug1);
 
 [C14,D0] = extractDataCoalitions(agcoalitions4, number_bugs1, number_tasks1);
[SolutionArrayScore14, DesVTipica] = extractDataScore(agscore4, number_bugs1, total_score1);
SolutionArrayCost14 = extractDataCost(agcost4, number_bugs1, avgCostPerbug1);
 
[C15,D0] = extractDataCoalitions(agcoalitions5, number_bugs1, number_tasks1);
[SolutionArrayScore15, DesVTipica] = extractDataScore(agscore5, number_bugs1, total_score1);
SolutionArrayCost15 = extractDataCost(agcost5, number_bugs1, avgCostPerbug1);
 
[C16,D0] = extractDataCoalitions(agcoalitions6, number_bugs1, number_tasks1);
[SolutionArrayScore16, DesVTipica] = extractDataScore(agscore6, number_bugs1, total_score1);
SolutionArrayCost16 = extractDataCost(agcost6, number_bugs1, avgCostPerbug1);
 
[C17,D0] = extractDataCoalitions(agcoalitions7, number_bugs1, number_tasks1);
[SolutionArrayScore17, DesVTipica] = extractDataScore(agscore7, number_bugs1, total_score1);
SolutionArrayCost17 = extractDataCost(agcost7, number_bugs1, avgCostPerbug1);
 
 
[C18,D0] = extractDataCoalitions(agcoalitions8, number_bugs1, number_tasks1);
[SolutionArrayScore15, DesVTipica] = extractDataScore(agscore8, number_bugs1, total_score1);
SolutionArrayCost15 = extractDataCost(agcost8, number_bugs1, avgCostPerbug1);
 
[C19,D0] = extractDataCoalitions(agcoalitions9, number_bugs1, number_tasks1);
[SolutionArrayScore16, DesVTipica] = extractDataScore(agscore9, number_bugs1, total_score1);
SolutionArrayCost16 = extractDataCost(agcost9, number_bugs1, avgCostPerbug1);
 
[C110,D0] = extractDataCoalitions(agcoalitions10, number_bugs1, number_tasks1);
[SolutionArrayScore17, DesVTipica] = extractDataScore(agscore10, number_bugs1, total_score1);
SolutionArrayCost17 = extractDataCost(agcost10, number_bugs1, avgCostPerbug1);

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

Coal2{1} = C11;
Coal2{2} = C12;
Coal2{3} = C13;
Coal2{4} = C14;
Coal2{5} = C15;
Coal2{6} = C16;
Coal2{7} = C17;
Coal2{8} = C18;
Coal2{9} = C19;
Coal2{10} = C110;
 
 
Cost2{1} = SolutionArrayCost11;
Cost2{2} = SolutionArrayCost12;
Cost2{3} = SolutionArrayCost13;
Cost2{4} = SolutionArrayCost14;
Cost2{5} = SolutionArrayCost15;
Cost2{6} = SolutionArrayCost16;
Cost2{7} = SolutionArrayCost17;
Cost2{8} = SolutionArrayCost18;
Cost2{9} = SolutionArrayCost19;
Cost2{10} = SolutionArrayCost110;
 
Score2{1} = SolutionArrayScore11;
Score2{2} = SolutionArrayScore12;
Score2{3} = SolutionArrayScore13;
Score2{4} = SolutionArrayScore14;
Score2{5} = SolutionArrayScore15; 
Score2{6} = SolutionArrayScore16;
Score2{7} = SolutionArrayScore17; 
Score2{8} = SolutionArrayScore18;
Score2{9} = SolutionArrayScore19;
Score2{10} = SolutionArrayScore110;
 
 
k = 1;
T1 = [];
for i = 1:10
    T1{i} = getData(Coal1{i},Score1{i},Cost1{i},total_score1,number_bugs1,avgCostPerbug1);
    T2{i} = getData(Coal2{i},Score2{i},Cost2{i},total_score1,number_bugs1,avgCostPerbug1);
end
m = 39;
for i=1:10
    
    X1(:,i) = T1{i}(1:m,6);
    Y1(:,i) = T1{i}(1:m,7);
    Z1(:,i) = T1{i}(1:m,8);
    W1(:,i) = T1{i}(1:m,4);
    
    X2(:,i) = T2{i}(1:m,6);
    Y2(:,i) = T2{i}(1:m,7);
    Z2(:,i) = T2{i}(1:m,8);
    W2(:,i) = T2{i}(1:m,4);
   
end
% figure
% boxplot(Z1);
% ylabel('Easy');
% figure
% boxplot(Z2);
% ylabel('Hard');

figure
%h(1) = subplot(2,1,1)

 handles3 = boxplot(Z1,'Colors','r');
  %title('Util');
 set(handles3(7,:),'Visible','off')
 set(handles3(6,:),'Visible','off')
 set(handles3,{'linew'},{2})
 text = findobj(handles3,'Type','text')
 set(text,'FontSize',34);
 ylabel({'Total Utility/','Total Score Available'});
 hold on
 handles4 = boxplot(Z2,'Colors','b');
 set(handles4(7,:),'Visible','off')
 set(handles4(6,:),'Visible','off')
 set(handles4,{'linew'},{2})
 text2 = findobj(handles4,'Type','text')
 set(text2,'FontSize',34);
 ylabel({'Total Utility/','Total Score Available'});
 
 