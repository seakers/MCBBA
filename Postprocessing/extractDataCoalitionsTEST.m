function [C,D] = extractDataCoalitionsTEST(A, number_bugs, number_tasks);
[m,n] = size(A);
B = [];
j = 1;
for i = 1:m
    %C = B(:,1);
    if (~ismember(A(i,5),B))
        B(j) = A(i,5);
        j = j + 1;
    end
end
%dataMatrix
C = zeros(length(B),12);
C(:,1)=B;
D = zeros(length(B),12);
D(:,1)=B;
%coalitional analysis
for i = 1:m
    [tf, index] = ismember(A(i,5), B);
    if A(i,2) == 0 && A(i,3) == 0 && A(i,4) == 0
        D(index,2) = D(index,2) + 1;
    elseif A(i,4) == 0 && A(i,3) == 0
        D(index,3) = D(index,3) + 1;
    elseif A(i,4) == 0
        D(index,4) = D(index,4) + 1;
    else
        D(index,5) = D(index,5) + 1;
    end

    %total tasks done with 1 sensor;
    C(index,3) = C(index,3) + A(i,2);
    
    if A(i,6) == 1
        C(index,6) = C(index,6) + A(i,2);
    else
        C(index,7) = C(index,7) + A(i,2);
    end
    
    %total tasks done with 2 sensors;
    C(index,4) = C(index,4) + A(i,3);
    
    if A(i,6) == 1
        C(index,8) = C(index,8) + A(i,3);
    else
        C(index,9) = C(index,9) + A(i,3);
    end
    
    %total tasks done with 3 sensors;
    C(index,5) = C(index,5) + A(i,4);
    
    if A(i,6) == 1
        C(index,10) = C(index,10) + A(i,4);
    else
        C(index,11) = C(index,11) + A(i,4);
    %total unused resources:
        C(index,12) = C(index,12) + A(i,7);
     
    end
    
    
    
end
[m,n] = size(C);
auxiliaryVector = [];
k = 1;
for i = 1:m
    if( mod(C(i,4),2) ~= 0 || mod(C(i,5),3) ~= 0)
        auxiliaryVector(k) = i;
        k = k+1;
    end 
end
[C,PS] = removerows(C,'ind',auxiliaryVector);
C(:,4) = C(:,4)/2;
C(:,5) = C(:,5)/3;
r= 1;
auxiliaryVector1 = [];
for i = 1:length(C(:,1))
    C(i,2) = number_tasks - (C(i,3)+C(i,4)+C(i,5));
    if(C(i,2) < 0)
        auxiliaryVector1(r) = i;
        r = r+1;
    end 
end
[C,PS] = removerows(C,'ind',auxiliaryVector1);