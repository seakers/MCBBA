function T = getData2 (SolutionArrayScore,SolutionArrayCost,total_score1,num_bugs,resperBug);
k = 1;
T = zeros(length(SolutionArrayScore(:,1)),3);
for i = 1:length(SolutionArrayScore(:,1))
    [tf1, indexCo] = ismember(SolutionArrayScore (i,3), SolutionArrayCost(:,4));
    if(indexCo ~= 0)
        T(k,1) = SolutionArrayScore(i,3);
        T(k,2) = SolutionArrayScore(i,1);
        T(k,3) = SolutionArrayCost(indexCo,3)/total_score1;
        k = k+1;
    end
end
end