function [SolutionArray,StandDevMat]= extractDataScore(A, number_bugs, total_score_scenario);
[m,n] = size(A);
B = [];
j = 1;
for i = 1:m
    %C = B(:,1);
    if (~ismember(A(i,3),B))
        B(j) = A(i,3);
        j = j + 1;
    end
end
C = zeros(length(B),3);
C(:,1)=B;

for i = 1:m
    [tf, index] = ismember(A(i,3), B);
    if (index ~= 0)
    C(index,2) = C(index,2) + A(i,2);
    C(index,3) = C(index,3) + 1;
    end
end
D(:,1)=C(:,2)./total_score_scenario;
D(:,2) = C(:,3);
D(:,3) = B;
D(:,4) = C(:,2)./C(:,3);
D(:,5) = C(:,2);

[p,q] = size (D);
auxiliaryVector = [];
k = 1;
for i = 1:p
    if( D(i,2) ~= number_bugs || D(i,1) > 1.01)
        auxiliaryVector(k) = i;
        k = k+1;
    end 
end
[Y,PS] = removerows(D,'ind',auxiliaryVector);
SolutionArray = Y;
StandDevMat = zeros(length(Y(:,1)),3);
StandDevMat(:,1) = Y(:,1);
StandDevMat(:,3) = Y(:,4);
for i = 1:m
    [tf, index] = ismember(A(i,3), Y(:,3));
    if (index ~= 0)
    auxiliary = (A(i,2) - Y(index,4))^2;
    StandDevMat(index,2) = StandDevMat(index,2) + auxiliary;  
    end
end
   StandDevMat(:,2) = sqrt(StandDevMat(:,2)/number_bugs)./Y(:,5);
   
        
 
    