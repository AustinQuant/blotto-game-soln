function BlottoExp(Q)
test=[34,33,33,0,0,0,0,0,0,0;
      0,34,33,33,0,0,0,0,0,0;
      0,0,34,33,33,0,0,0,0,0;
      0,0,0,34,33,33,0,0,0,0;
      0,0,0,0,34,33,33,0,0,0;
      0,0,0,0,0,34,33,33,0,0;
      0,0,0,0,0,0,34,33,33,0;
      0,0,0,0,0,0,0,34,33,33;
      10,10,10,10,10,10,10,10,10,10;
      0,20,0,20,0,20,0,20,0,20;
      20,0,20,0,20,0,20,0,20,0;
      0,0,38,27,21,4,3,3,3,1;
      0,0,38,27,20,3,3,3,3,3];
tic

cDLc=zeros(Q,10);%Creme de la creme

for i=1:Q
    randStrats = BlottoTourn(1000); % Top 50 from tournament
    %bestRand= BlottoBest(randStrats);% Fights top 50 against each other
    %fLst=BlottoBest(1,2:11); %Final winner to go into cDLc (score is cut out)
    cDLc(i,:)=randStrats(1,1:10); %change to BlottoBest for another layer of tournaments
end

cDLc=[cDLc;test];


BlottoBest(cDLc)
toc
end