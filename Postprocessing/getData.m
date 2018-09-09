function T = getData (C,SolutionArrayScore,SolutionArrayCost,total_score1,num_bugs,resperBug);
k = 1;
T = [];
for i = 1:length(C(:,1))
    [tf1, indexSc] = ismember(C(i,1), SolutionArrayScore (:,3));
    [tf2, indexCo] = ismember(C(i,1), SolutionArrayCost(:,4));
    if(indexSc ~= 0 && indexCo ~= 0)
        T(k,1:5) = C(i,1:5);
        T(k,6) = SolutionArrayScore(indexSc,1);
        T(k,7) = SolutionArrayCost(indexCo,3)/total_score1;
        T(k,9) = SolutionArrayCost(indexCo,3)/(num_bugs*resperBug);
        
        k = k+1;
    end
end
T(:,8) = (T(:,6) - T(:,7)); 
end