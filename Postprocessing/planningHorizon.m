%Data 1
close all;
clear all;
name = 'DEFPHEASY';
name2 = 'DEFPHHARD';
score1 = importdata(['score',name,'1.txt']);
score2 = importdata(['score',name,'2.txt']);
score3 = importdata(['score',name,'3.txt']);
score4 = importdata(['score',name,'4.txt']);
score5 = importdata(['score',name,'5.txt']);
score6 = importdata(['score',name,'6.txt']);
score7 = importdata(['score',name,'7.txt']);
score8 = importdata(['score',name,'8.txt']);
score9 = importdata(['score',name,'9.txt']);
score10 = importdata(['score',name,'10.txt']);

cost1 = importdata(['cost',name,'1.txt']);
cost2 = importdata(['cost',name,'2.txt']);
cost3 = importdata(['cost',name,'3.txt']);
cost4 = importdata(['cost',name,'4.txt']);
cost5 = importdata(['cost',name,'5.txt']);
cost6 = importdata(['cost',name,'6.txt']);
cost7 = importdata(['cost',name,'7.txt']);
cost8 = importdata(['cost',name,'8.txt']);
cost9 = importdata(['cost',name,'9.txt']);
cost10 = importdata(['cost',name,'10.txt']);

coalitions1 = importdata(['coalitions',name,'1.txt']);
coalitions2 = importdata(['coalitions',name,'2.txt']);
coalitions3 = importdata(['coalitions',name,'3.txt']);
coalitions4 = importdata(['coalitions',name,'4.txt']);
coalitions5 = importdata(['coalitions',name,'5.txt']);
coalitions6 = importdata(['coalitions',name,'6.txt']);
coalitions7 = importdata(['coalitions',name,'7.txt']);
coalitions8 = importdata(['coalitions',name,'8.txt']);
coalitions9 = importdata(['coalitions',name,'9.txt']);
coalitions10 = importdata(['coalitions',name,'10.txt'])

easyscore1 = importdata(['score',name2,'1.txt']);
easyscore2 = importdata(['score',name2,'2.txt']);
easyscore3 = importdata(['score',name2,'3.txt']);
easyscore4 = importdata(['score',name2,'4.txt']);
easyscore5 = importdata(['score',name2,'5.txt']);
easyscore6 = importdata(['score',name2,'6.txt']);
easyscore7 = importdata(['score',name2,'7.txt']);
easyscore8 = importdata(['score',name2,'8.txt']);
easyscore9 = importdata(['score',name2,'9.txt']);
easyscore10 = importdata(['score',name2,'10.txt']);
 
easycost1 = importdata(['cost',name2,'1.txt']);
easycost2 = importdata(['cost',name2,'2.txt']);
easycost3 = importdata(['cost',name2,'3.txt']);
easycost4 = importdata(['cost',name2,'4.txt']);
easycost5 = importdata(['cost',name2,'5.txt']);
easycost6 = importdata(['cost',name2,'6.txt']);
easycost7 = importdata(['cost',name2,'7.txt']);
easycost8 = importdata(['cost',name2,'8.txt']);
easycost9 = importdata(['cost',name2,'9.txt']);
easycost10 = importdata(['cost',name2,'10.txt']);
 
easycoalitions1 = importdata(['coalitions',name2,'1.txt']);
easycoalitions2 = importdata(['coalitions',name2,'2.txt']);
easycoalitions3 = importdata(['coalitions',name2,'3.txt']);
easycoalitions4 = importdata(['coalitions',name2,'4.txt']);
easycoalitions5 = importdata(['coalitions',name2,'5.txt']);
easycoalitions6 = importdata(['coalitions',name2,'6.txt']);
easycoalitions7 = importdata(['coalitions',name2,'7.txt']);
easycoalitions8 = importdata(['coalitions',name2,'8.txt']);
easycoalitions9 = importdata(['coalitions',name2,'9.txt']);
easycoalitions10 = importdata(['coalitions',name2,'10.txt'])


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

[C11,D0] = extractDataCoalitions(easycoalitions1, number_bugs1, number_tasks1);
[SolutionArrayScore11, DesVTipica] = extractDataScore(easyscore1, number_bugs1, total_score1);
SolutionArrayCost11 = extractDataCost(easycost1, number_bugs1, avgCostPerbug1);
 
 [C12,D0] = extractDataCoalitions(easycoalitions2, number_bugs1, number_tasks1);
[SolutionArrayScore12, DesVTipica] = extractDataScore(easyscore2, number_bugs1, total_score1);
SolutionArrayCost12 = extractDataCost(easycost2, number_bugs1, avgCostPerbug1);
 
 [C13,D0] = extractDataCoalitions(easycoalitions3, number_bugs1, number_tasks1);
[SolutionArrayScore13, DesVTipica] = extractDataScore(easyscore3, number_bugs1, total_score1);
SolutionArrayCost13 = extractDataCost(easycost3, number_bugs1, avgCostPerbug1);
 
 [C14,D0] = extractDataCoalitions(easycoalitions4, number_bugs1, number_tasks1);
[SolutionArrayScore14, DesVTipica] = extractDataScore(easyscore4, number_bugs1, total_score1);
SolutionArrayCost14 = extractDataCost(easycost4, number_bugs1, avgCostPerbug1);
 
[C15,D0] = extractDataCoalitions(easycoalitions5, number_bugs1, number_tasks1);
[SolutionArrayScore15, DesVTipica] = extractDataScore(easyscore5, number_bugs1, total_score1);
SolutionArrayCost15 = extractDataCost(easycost5, number_bugs1, avgCostPerbug1);
 
[C16,D0] = extractDataCoalitions(easycoalitions6, number_bugs1, number_tasks1);
[SolutionArrayScore16, DesVTipica] = extractDataScore(easyscore6, number_bugs1, total_score1);
SolutionArrayCost16 = extractDataCost(easycost6, number_bugs1, avgCostPerbug1);
 
[C17,D0] = extractDataCoalitions(easycoalitions7, number_bugs1, number_tasks1);
[SolutionArrayScore17, DesVTipica] = extractDataScore(easyscore7, number_bugs1, total_score1);
SolutionArrayCost17 = extractDataCost(easycost7, number_bugs1, avgCostPerbug1);
 
[C18,D0] = extractDataCoalitions(easycoalitions8, number_bugs1, number_tasks1);
[SolutionArrayScore18, DesVTipica] = extractDataScore(easyscore8, number_bugs1, total_score1);
SolutionArrayCost18 = extractDataCost(easycost8, number_bugs1, avgCostPerbug1);
 
[C19,D0] = extractDataCoalitions(easycoalitions9, number_bugs1, number_tasks1);
[SolutionArrayScore19, DesVTipica] = extractDataScore(easyscore9, number_bugs1, total_score1);
SolutionArrayCost19 = extractDataCost(easycost9, number_bugs1, avgCostPerbug1);
 
[C110,D0] = extractDataCoalitions(easycoalitions10, number_bugs1, number_tasks1);
[SolutionArrayScore110, DesVTipica] = extractDataScore(easyscore10, number_bugs1, total_score1);
SolutionArrayCost110 = extractDataCost(easycost10, number_bugs1, avgCostPerbug1);



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
m = 27;
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
 %ylim([-0.1 1.1])
 %axes('FontSize', 18);


 hold on
 
 handles4 = boxplot(Z2,'Colors','b');
 set(handles4(7,:),'Visible','off')
 set(handles4(6,:),'Visible','off')
 set(handles4,{'linew'},{2})
 text2 = findobj(handles3,'Type','text')
 set(text2,'FontSize',34);
 ylabel({'Total Utility/','Total Score Available'});
 %ylim([-0.1 1.1])
 %axes('FontSize', 16);
 
% h(2) = subplot(2,2,2)
%   handles5 = boxplot(U(:,10:12),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','b');
%   title('Without Coalition Test');
% 
%   set(handles5(7,:),'Visible','off')
%  set(handles5(6,:),'Visible','off')
%  set(handles5,{'linew'},{2})
%  ylabel({'Subtasks allocated/','Subtasks available'});
%  ylim([-0.1 1.1])    
% 
% 
%  hold on
%  handles6 = boxplot(U(:,7:9),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','r');
%  set(handles6(7,:),'Visible','off')
%  set(handles6(6,:),'Visible','off')
%  set(handles6,{'linew'},{2})
%  ylabel({'Subtasks allocated/','Subtasks available'});
% 
%  ylim([-0.1 1.1])
%  
%  h(3) = subplot(2,2,3)
% handles11 = boxplot(GR,'Labels',{'With CoalitionTest','Without CoalitionTest'});
% ylabel({'% of subtasks done',' with sensor waste'});
% 
% h(4) = subplot(2,2,4)
% handles21 = boxplot(Z,'Labels',{'With CoalitionTest','Without CoalitionTest'})
% ylabel({'Utility/','Total Score'});
% 
% 
% ampliar = 0.065;
% height = 3;
% bottom = 2;
% p1 = get(h(1), 'pos');
% p2 = get(h(2), 'pos');
% p3 = get(h(3), 'pos');
% p4 = get(h(4), 'pos');
% p1(height) = p1(height) + ampliar;
% p2(height) = p2(height) + ampliar;
% %p2(bottom) = p2(bottom) + 0.05;
% p3(height) = p3(height) + ampliar;
% p4(height) = p4(height) + ampliar;
% 
% p3(bottom) = p3(bottom) + ampliar;
% p4(bottom) = p4(bottom) + ampliar;
% %p3(bottom) = p3(bottom) + ampliar;
% set(h(1), 'pos', p1);
% set(h(2), 'pos', p2);
% set(h(3), 'pos', p3);
% set(h(4), 'pos', p4);



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
% xlabel('score');
% hold on
% 
% figure
% plot(x,Z,'-o');
% xlabel('utility');
% 
% figure
% plot(x,Y,'-o');
% xlabel('cost');



