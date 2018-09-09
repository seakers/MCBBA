%Data 1
close all;
clear all;
name = 'SYNCHPH';
score1 = importdata('scoreYES3DEFINITIVECOALTEST84.txt');
score2 = importdata('scoreNO3DEFINITIVECOALTEST84.txt');


cost1 = importdata('costYES3DEFINITIVECOALTEST84.txt');
cost2 = importdata('costNO3DEFINITIVECOALTEST84.txt');

coalitions1 = importdata('coalitionsYES3DEFINITIVECOALTEST84.txt');
coalitions2 = importdata('coalitionsNO3DEFINITIVECOALTEST84.txt');



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
m = 51;
for i=1:2
    
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,7);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4);
   
end
nb = m;
U(:,1) = CTEST1(1:nb,6)/12;
U(:,2) = CTEST1(1:nb,8)/18;
U(:,3) = CTEST1(1:nb,10)/27;
U(:,4) = CTEST1(1:nb,7)/12;
U(:,5) = CTEST1(1:nb,9)/18;
U(:,6) = CTEST1(1:nb,11)/27;
U(:,7) = CTEST2(1:nb,6)/12;
U(:,8) = CTEST2(1:nb,8)/18;
U(:,9) = CTEST2(1:nb,10)/27;
U(:,10) = CTEST2(1:nb,7)/12;
U(:,11) = CTEST2(1:nb,9)/18;
U(:,12) = CTEST2(1:nb,11)/27;

GR(:,1) = CTEST1(1:nb,12)/45;
GR(:,2) = CTEST2(1:nb,12)/45;

% figure
% handles20 = boxplot(X,'Labels',{'With CoalitionTest','Without CoalitionTest'})
% 
% figure
% handles21 = boxplot(Y,'Labels',{'With CoalitionTest','Without CoalitionTest'})


figure
h(1) = subplot(2,2,1)
 handles3 = boxplot(U(:,4:6),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','b');
  title('With Coalition Test');
 set(handles3(7,:),'Visible','off')
 set(handles3(6,:),'Visible','off')
 set(handles3,{'linew'},{2})
 text = findobj(handles3,'Type','text')
 set(text,'FontSize',34);
 ylabel({'Subtasks allocated/','Subtasks available'});
 ylim([-0.1 1.1])
 %axes('FontSize', 18);


 hold on
 
 handles4 = boxplot(U(:,1:3),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','r');
 set(handles4(7,:),'Visible','off')
 set(handles4(6,:),'Visible','off')
 set(handles4,{'linew'},{2})
 text2 = findobj(handles3,'Type','text')
 set(text2,'FontSize',34);
 ylabel({'Subtasks allocated/','Subtasks available'});
 ylim([-0.1 1.1])
 %axes('FontSize', 16);
 
h(2) = subplot(2,2,2)
  handles5 = boxplot(U(:,10:12),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','b');
  title('Without Coalition Test');

  set(handles5(7,:),'Visible','off')
 set(handles5(6,:),'Visible','off')
 set(handles5,{'linew'},{2})
 ylabel({'Subtasks allocated/','Subtasks available'});
 ylim([-0.1 1.1])    


 hold on
 handles6 = boxplot(U(:,7:9),'Labels',{'1 sensor','2 sensors','3 sensors'},'Colors','r');
 set(handles6(7,:),'Visible','off')
 set(handles6(6,:),'Visible','off')
 set(handles6,{'linew'},{2})
 ylabel({'Subtasks allocated/','Subtasks available'});

 ylim([-0.1 1.1])
 
 h(3) = subplot(2,2,3)
handles11 = boxplot(GR,'Labels',{'With CoalitionTest','Without CoalitionTest'});
ylabel({'% of subtasks done',' with sensor waste'});


h(4) = subplot(2,2,4)
handles21 = boxplot(Z,'Labels',{'With CoalitionTest','Without CoalitionTest'})
ylabel({'Utility/','Total Score'});


ampliar = 0.065;
height = 3;
bottom = 2;
p1 = get(h(1), 'pos');
p2 = get(h(2), 'pos');
p3 = get(h(3), 'pos');
p4 = get(h(4), 'pos');
p1(height) = p1(height) + ampliar;
p2(height) = p2(height) + ampliar;
%p2(bottom) = p2(bottom) + 0.05;
p3(height) = p3(height) + ampliar;
p4(height) = p4(height) + ampliar;

p3(bottom) = p3(bottom) + ampliar;
p4(bottom) = p4(bottom) + ampliar;
%p3(bottom) = p3(bottom) + ampliar;
set(h(1), 'pos', p1);
set(h(2), 'pos', p2);
set(h(3), 'pos', p3);
set(h(4), 'pos', p4);


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




