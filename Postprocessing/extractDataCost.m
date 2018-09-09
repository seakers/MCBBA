function SolutionArray = extractDataCost(A, number_bugs, avgCostPerbug);
[m,n] = size(A);
B = [];
j = 1;
for i = 1:m
    %C = B(:,1);
    if (~ismember(A(i,3),B))
        if (i == 577)
            hola = 4;
        end
        B(j) = A(i,3);
        j = j + 1;
    end
end
C = zeros(length(B),3);
C(:,1)=B;
for i = 1:m
    [tf, index] = ismember(A(i,3), B);
    if index == 0
        hello = 1;
    end
    C(index,2) = C(index,2) + A(i,2);
    C(index,3) = C(index,3) + 1;
end
D(:,1)=C(:,2)/(number_bugs*avgCostPerbug);
D(:,2) = C(:,3);
D(:,3) = C (:,2);
D(:,4) = C(:,1);
[p,q] = size (D);
auxiliaryVector = [];
k = 1;
for i = 1:p
    if( D(i,2) ~= number_bugs)
        auxiliaryVector(k) = i;
        k=k+1;
    end 
end
[Y,PS] = removerows(D,'ind',auxiliaryVector);
SolutionArray = Y;
% StandDevMat = zeros(length(Y(:,3)),3);
% StandDevMat(:,1) = Y(:,1);
% StandDevMat(:,3) = Y(:,3);
% for i = 1:m
%     [tf, index] = ismember(A(i,3), Y(:,4));
%     auxiliary = (A(i,2) - Y(index,4))^2;
%     StandDevMat(index,2) = StandDevMat(index,2) + auxiliary;    
% end
%    StandDevMat(:,2) = sqrt(StandDevMat(:,2)/number_bugs);
   


