%This function generates Q random strategies then fights each of them
%pairwise. It outputs ordered top strategy
function S=BlottoTourn(Q)
leag=zeros(Q,2); %will hold full pool of competitors, their unique index and their scores
strats=zeros(Q,10);%pre-allocation
for n=1:Q
    leag(n,1)= n; %1st Column is unique ID for pairing
    %2nd column is for mean score of strat intialised to zero  
    strats(n,:)=BlottoRand(10,100); %generates all Q strats
end
leag= [leag, strats]; %concatenates to create league table 

ord= nchoosek(1:Q,2);  %all possible pairings in 1 to Q up to permutation

for k=1:size(ord,1) %up to number of rows in ord
    %fights two strats exracted from the table
    res=BlottoBattle(leag(ord(k,1),3:12),leag(ord(k,2),3:12));
    leag(ord(k,1),2)=leag(ord(k,1),2)+res(1); %adds battle pts to score
    leag(ord(k,2),2)=leag(ord(k,2),2)+res(2); %adds battle pts score
end   
leag(:,2)=leag(:,2)/(Q-1); %Divides total score by number of battles to get mean score

Lead=sortrows(leag,2,'descend');
S=Lead(1:min(1,Q),3:12); %outputs top 50 strategies change 3 -> 2 if want score
return