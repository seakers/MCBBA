%temporalMonteCarlo
close all;
clear all;
coalitions10000 = importdata('coalitions10000.txt');
coalitions10001 = importdata('coalitions103001.txt');
coalitions10002 = importdata('coalitions10002.txt');
coalitions10021 = importdata('coalitions103021.txt');
coalitions10022 = importdata('coalitions10022.txt');
coalitions10041 = importdata('coalitions103041.txt');
%coalitions10042 = importdata('coalitions10042.txt');
coalitions10061 = importdata('coalitions103061.txt');
coalitions10062 = importdata('coalitions10062.txt');
coalitions10081 = importdata('coalitions103081.txt');
coalitions10082 = importdata('coalitions10082.txt');
coalitions100_INF_1 = importdata('coalitions1030_500_1.txt');
cost10000 = importdata('cost10000.txt');
cost10001 = importdata('cost103001.txt');
cost10002 = importdata('cost10002.txt');
cost10021 = importdata('cost103021.txt');
cost10022 = importdata('cost10022.txt');
cost10041 = importdata('cost103041.txt');
cost100_INF_1 = importdata('cost1030_500_1.txt');
%cost10042 = importdata('cost10042.txt');
cost10061 = importdata('cost103061.txt');
cost10062 = importdata('cost10062.txt');
cost10081 = importdata('cost103081.txt');
cost10082 = importdata('cost10082.txt');
score10000 = importdata('score10000.txt');
score10001 = importdata('score103001.txt');
score10002 = importdata('score10002.txt');
score10021 = importdata('score103021.txt');
score10022 = importdata('score10022.txt');
score10041 = importdata('score103041.txt');
%score10042 = importdata('score10042.txt');
score10061 = importdata('score103061.txt');
score10062 = importdata('score10062.txt');
score10081 = importdata('score103081.txt');
score10082 = importdata('score10082.txt');
score100_INF_1 = importdata('score1030_500_1.txt');

number_bugs3 = 6;
number_tasks3 = 30;
avgCostPerbug3 = 233.333333;
number_bugs2 = 4;
number_tasks2 = 30;
avgCostPerbug2 = 350.0;
number_bugs1 = 2;
number_tasks1 = 30;
avgCostPerbug1 = 700.0;
total_score1 = 30000;
xvector = [0,2,4,6,8,10];
% %Data % Points

[C00,D0] = extractDataCoalitions(coalitions10000, number_bugs1, number_tasks1);
[SolutionArrayScore0, DesVTipica] = extractDataScore(score10000, number_bugs1, total_score1);
SolutionArrayCost0 = extractDataCost(cost10000, number_bugs1, avgCostPerbug1);

[C01,D0] = extractDataCoalitions(coalitions10001, number_bugs2, number_tasks1);
[SolutionArrayScore01, DesVTipica] = extractDataScore(score10001, number_bugs2, total_score1);
SolutionArrayCost01 = extractDataCost(cost10001, number_bugs2, avgCostPerbug2);

[C02,D0] = extractDataCoalitions(coalitions10002, number_bugs3, number_tasks1);
[SolutionArrayScore02, DesVTipica] = extractDataScore(score10002, number_bugs3, total_score1);
SolutionArrayCost02 = extractDataCost(cost10002, number_bugs3, avgCostPerbug3);

[C21,D0] = extractDataCoalitions(coalitions10021, number_bugs2, number_tasks1);
[SolutionArrayScore21, DesVTipica] = extractDataScore(score10021, number_bugs2, total_score1);
SolutionArrayCost21 = extractDataCost(cost10021, number_bugs2, avgCostPerbug2);

[C22,D0] = extractDataCoalitions(coalitions10022, number_bugs3, number_tasks1);
[SolutionArrayScore22, DesVTipica] = extractDataScore(score10022, number_bugs3, total_score1);
SolutionArrayCost22 = extractDataCost(cost10022, number_bugs3, avgCostPerbug3);

[C41,D0] = extractDataCoalitions(coalitions10041, number_bugs2, number_tasks1);
[SolutionArrayScore41, DesVTipica] = extractDataScore(score10041, number_bugs2, total_score1);
SolutionArrayCost41 = extractDataCost(cost10041, number_bugs2, avgCostPerbug2);

%[C42,D0] = extractDataCoalitions(coalitions10042, number_bugs3, number_tasks1);
%[SolutionArrayScore42, DesVTipica] = extractDataScore(score10042, number_bugs3, total_score1);
%SolutionArrayCost42 = extractDataCost(cost10042, number_bugs3, avgCostPerbug3);

[C61,D0] = extractDataCoalitions(coalitions10061, number_bugs2, number_tasks1);
[SolutionArrayScore61, DesVTipica] = extractDataScore(score10061, number_bugs2, total_score1);
SolutionArrayCost61 = extractDataCost(cost10061, number_bugs2, avgCostPerbug2);

[C62,D0] = extractDataCoalitions(coalitions10062, number_bugs3, number_tasks1);
[SolutionArrayScore62, DesVTipica] = extractDataScore(score10062, number_bugs3, total_score1);
SolutionArrayCost62 = extractDataCost(cost10062, number_bugs3, avgCostPerbug3);

[C81,D0] = extractDataCoalitions(coalitions10081, number_bugs2, number_tasks1);
[SolutionArrayScore81, DesVTipica] = extractDataScore(score10081, number_bugs2, total_score1);
SolutionArrayCost81 = extractDataCost(cost10081, number_bugs2, avgCostPerbug2);

[C82,D0] = extractDataCoalitions(coalitions10082, number_bugs3, number_tasks1);
[SolutionArrayScore82, DesVTipica] = extractDataScore(score10082, number_bugs3, total_score1);
SolutionArrayCost82 = extractDataCost(cost10082, number_bugs3, avgCostPerbug3);

[CINF1,D0] = extractDataCoalitions(coalitions100_INF_1, number_bugs2, number_tasks1);
[SolutionArrayScoreINF1, DesVTipica] = extractDataScore(score100_INF_1, number_bugs2, total_score1);
SolutionArrayCostINF1 = extractDataCost(cost100_INF_1, number_bugs2, avgCostPerbug2);


Coal1{1} = C01;
Coal1{2} = C21;
Coal1{3} = C41;
Coal1{4} = C61;
Coal1{5} = C81;
Coal1{6} = CINF1;

Cost1{1} = SolutionArrayCost01;
Cost1{2} = SolutionArrayCost21;
Cost1{3} = SolutionArrayCost41;
Cost1{4} = SolutionArrayCost61;
Cost1{5} = SolutionArrayCost81;
Cost1{6} = SolutionArrayCostINF1;

Score1{1} = SolutionArrayScore01;
Score1{2} = SolutionArrayScore21;
Score1{3} = SolutionArrayScore41;
Score1{4} = SolutionArrayScore61;
Score1{5} = SolutionArrayScore81;
Score1{6} = SolutionArrayScoreINF1;
% Coal2{1} = C02;
% Coal2{2} = C22;
% Coal2{3} = C42;
% Coal2{4} = C62;
% Coal2{5} = C82;
% 
% Cost2{1} = SolutionArrayCost02;
% Cost2{2} = SolutionArrayCost22;
% Cost2{3} = SolutionArrayCost42;
% Cost2{4} = SolutionArrayCost62;
% Cost2{5} = SolutionArrayCost82;
% 
% Score2{1} = SolutionArrayScore02;
% Score2{2} = SolutionArrayScore22;
% Score2{3} = SolutionArrayScore42;
% Score2{4} = SolutionArrayScore62;
% Score2{5} = SolutionArrayScore82;


for i = 1:6
    T1{i} = getData(Coal1{i},Score1{i},Cost1{i},total_score1,number_bugs2,avgCostPerbug2);
    %T2{i} = getData(Coal2{i},Score2{i},Cost2{i},total_score1);
end

m = 128;
T0 = getData(C00,SolutionArrayScore0,SolutionArrayCost0,total_score1,number_bugs1,avgCostPerbug1);
for i=1:6
    X(:,i) = T1{i}(1:m,6);
    Y(:,i) = T1{i}(1:m,9);
    Z(:,i) = T1{i}(1:m,8);
    W(:,i) = T1{i}(1:m,4)*100/15;
    X(:,7) = T0(1:m,6);
    Y(:,7) = T0(1:m,9);
    Z(:,7) = T0(1:m,8);
end

% Coalitions Formed
TWOS =[mean(C01(:,4)),mean(C21(:,4)),mean(C41(:,4)),mean(C61(:,4)),mean(C81(:,4)), mean(CINF1(:,4))]*100/15;
ERRS =[std(C01(:,4)),std(C21(:,4)),std(C41(:,4)),std(C61(:,4)),std(C81(:,4)),std(CINF1(:,4))]*100/15;

figure('color', 'w');

h(1) = subplot(3,1,1);
boxplot(W,'Labels',{'0','2','4','6','8','\infty'});
ylim([0 100]);
ylabel({'Coalitions formed /';'Coalitions available (%)'});
%text(-.15,1.05,['(',char(96),')'],...
       % 'color','r',...
       % 'fontw','b');

%xlabel('Allowed waiting time');
%xlabel('Allowed waiting time','FontSize',14);
h(2) = subplot(3,1,2);
boxplot(X,'Labels',{'0','2','4','6','8','\infty','Not constrained'});
%xlabel('Allowed waiting time','FontSize',14);
ylim([0.2 0.8]);
ylabel({'Score Achieved /'; 'Score of The Scenario'});
%text(-.15,1.05,['(',char(96),')'],...
       % 'color','r',...
       % 'fontw','b');


h(3) = subplot(3,1,3);
boxplot(Y,'Labels',{'0','2','4','6','8','Inf','Not constrained'});
xlabel('Allowed waiting time [\tau_{corr} (s)]','FontSize',12);
ylim([0.3 1]);
ylabel({'Total Cost /';'Resources per agent'});
%text(-.15,1.05,['(',char(96),')'],...
       % 'color','r',...
       % 'fontw','b');
ampliar = 0.065;
height = 4;
bottom = 1;
p1 = get(h(1), 'pos');
p2 = get(h(2), 'pos');
p3 = get(h(3), 'pos');
p1(height) = p1(height) + ampliar;
p2(height) = p2(height) + ampliar;
%p2(bottom) = p2(bottom) + 0.05;
p3(height) = p3(height) + ampliar;
%p3(bottom) = p3(bottom) + ampliar;
set(h(1), 'pos', p1);
set(h(2), 'pos', p2);
set(h(3), 'pos', p3);

set(h, 'box', 'off');
set(h, 'FontWeight','bold');
set(h(1),'xcolor','w');
set(h(2),'xcolor','w');
linkaxes(h','x');