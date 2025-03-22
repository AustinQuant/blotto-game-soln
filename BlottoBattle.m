function W= BlottoBattle(A,B)
W= [0,0];
conseqA= 0; %counters for consecutive wins
conseqB= 0;
Apts=0; %points counter
Bpts=0;

if length(A)~= length(B)
    W= "Dimension Mismatch";
    return
end
for i=1:length(A)
   if A(i)>B(i)
       Apts = Apts+ i;
       conseqA= conseqA+1;
       conseqB=0;
   end
   if B(i)>A(i)
       Bpts = Bpts+ i;
       conseqB= conseqB+1;
       conseqA=0;
   end
   %If A has three consecutive wins then it gets all remaining points
   if conseqA==3 && i<length(A)
       for j=(i+1):length(A)
          Apts = Apts+ j; 
       end
       break
   end
   %If B has three consecutive wins then it gets all remaining points
    if conseqB==3 && i<length(A)
       for j=(i+1):length(A)
          Bpts = Bpts+ j; 
       end
       break
   end      
end

W=[Apts,Bpts];
return