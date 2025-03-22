%works to discover best-of-best strategies
%Input: matrix of strategies Output: Ordered top 100 with mean score

function B=BlottoBest(X)
leag=zeros(size(X,1),size(X,2)+2) ; %[ID, Points,strat]
for n=1:size(X,1)
    leag(n,1)=n;
    leag(n,3:12)=X(n,1:10);
end

ord= nchoosek(1:size(X,1),2);  %all possible pairings in 1 to Q up to permutation

for k=1:size(ord,1) %up to number of rows in ord
    %fights two strats extracted from the table
    res=BlottoBattle(leag(ord(k,1),3:12),leag(ord(k,2),3:12));
    leag(ord(k,1),2)=leag(ord(k,1),2)+res(1); %adds to total score
    leag(ord(k,2),2)=leag(ord(k,2),2)+res(2); %adds to total score
    
end 
leag(:,2)=leag(:,2)/(size(X,1)-1);
Lead=sortrows(leag,2,'descend');
B=Lead(1:min(100,size(X,1)),2:12); %outputs mean score and strategy of top 50 strategies
return
