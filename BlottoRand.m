%Function for generating a random blotto strategy 
function S=BlottoRand(N,M) %N= number of castles, M= Total troops
P = [0]; %Will hold partition of [0,M] by integer numbers
S=[]; %Will hold the strategy
for i=1:(N-1)
    P= [P, randi([0,M])]; %Appends random integer to list
end  
P=sort([P,100]);     

for j=1:(N)
    S=[S,P(j+1)-P(j)]; %Generates strategy by taking the differences between point in partition
end
return  

