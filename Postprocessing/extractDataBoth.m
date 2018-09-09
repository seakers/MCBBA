function [SolutionArray,Benefit] = extractDataBoth(A, F, number_bugs, Price_per_bug);
%%------------For Score
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
    C(index,2) = C(index,2) + A(i,2);
    C(index,3) = C(index,3) + 1;
end
[p,q] = size (C);
auxiliaryVector = [];
k = 1;
for i = 1:p
    if( C(i,3) ~= number_bugs)
        auxiliaryVector(k) = i;
        k = k+1;
    end 
end
[Y,PS] = removerows(C,'ind',auxiliaryVector);

%--------For Cost
[m,n] = size(F);
G = [];
j = 1;
for i = 1:m
    %C = B(:,1);
    if (~ismember(F(i,3),G))
        G(j) = F(i,3);
        j = j + 1;
    end
end
H = zeros(length(G),3);
H(:,1)=G;
for i = 1:m
    [tf, index] = ismember(F(i,3), G);
    H(index,2) = H(index,2) + F(i,2);
    H(index,3) = H(index,3) + 1;
end
[p,q] = size (H);
auxiliaryVector2 = [];
k = 1;
for i = 1:p
    if( H(i,3) ~= number_bugs)
        auxiliaryVector2(k) = i;
        k = k+1;
    end 
end
[Z,PS2] = removerows(H,'ind',auxiliaryVector2);
J = zeros(length(Z(:,1)),4);
y = 1; 
for i = 1:max(length(Z(:,1)),length(Y(:,1)))
    [tf, index] = ismember(Y(i,1), Z(:,1));
    if (index == 0)
    else        
    J(y,1) = Y(i,1);
    J(y,2) = Y(i,2);
    J(y,3) = Z(index,2);
    y = y + 1;
    end
end
L = (J(:,2)./(J(:,1)))./(J(:,3)/(number_bugs));
SolutionArray = L;
Benefit = (L - 1)*100;

end
    

