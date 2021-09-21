
 
% A1, A2, A3 are three manufactures, G1, G2, G3, three comodities, B1, B2,
% B3, B4 four market loctions
S =[0 26 25;58 10 35; 42 24 18 ];  %supplies 
% S(i, j)  number of commodities Gj available in manufacture Ai
D = [25 0 0 ; 30 26 48 ; 20 20 10 ; 10 14 32 ]; % Demands 
% D(i,j) number of comodities of Gj  demanded by destination Bi, the last
% column represent due time
T= [ 10 9 8 5; 5 10 9 8; 4 7 13 6]; % shiping time
% T(i,j) transportation time to ship comodities from manufacture Ai to
% destination Bj
C = [8 12 14 17; 9 7 11 12; 13 14 9 17]; % unit transportation cost
% C(i, j) cost of shipping comodities from manufacture Ai to the
% destination Bj
DT = [ 5; 7; 9; 6]; % Due time 
% due times for goods demanded by Bj market locations
syms x(i,j,l);
for i=1 : 3
    for j= 1 :4
       for l=1 : 3
         M(i,j,l)=(T(i,j)-DT(j))*x(i,j,l);   
       end
    end 
end
 
s=0; 
for i=1:3
    for j=1:4
        for l=1:3
            s=s+ C(i,j)* x(i,j,l);
        end
    end
end
 
syms x(i,j,l)
A_symsum=symsum(x(i,j,l),j,1,4);
%first constraint<=ail for i and l
 
syms x(i,j,l)
B_symsum=symsum(x(i,j,l),i,1,3);
 
%second constraint =bjl for j and l
 
%constraints:
 
 lb=zeros(36,1);
 ub= inf(36,1);
 %linear inequalities
 A=zeros(9,36);
 A(1,1)=1
 A(1,2)=1
 A(1,3)=1
 A(1,4)=1
 A(2,5)=1
 A(2,6)=1
 A(2,7)=1
 A(2,8)=1
 A(3,9)=1
 A(3,10)=1
 A(3,11)=1
 A(3,12)=1
 A(4,13)=1
 A(4,14)=1
 A(4,15)=1
 A(4,16)=1
 A(5,17)=1
 A(5,18)=1
 A(5,19)=1
 A(5,20)=1
 A(6,21)=1
 A(6,22)=1
 A(6,23)=1
 A(6,24)=1
 A(7,25)=1
 A(7,26)=1
 A(7,27)=1
 A(7,28)=1
 A(8,29)=1
 A(8,30)=1
 A(8,31)=1
 A(8,32)=1
 A(9,33)=1
 A(9,34)=1
 A(9,35)=1
 A(9,36)=1
 
b=[0; 26; 25; 58; 10; 35; 42; 24; 18];
 
 %linear equalities
Aeq = zeros(12,36)
 
Aeq(1,1)=1
 Aeq(1,2)=1
 Aeq(1,3)=1
 Aeq(2,4)=1
 Aeq(2,5)=1
 Aeq(2,6)=1
 Aeq(3,7)=1
 Aeq(3,8)=1
 Aeq(3,9)=1
 Aeq(4,10)=1
 Aeq(4,11)=1
 Aeq(4,12)=1
 Aeq(5,13)=1
 Aeq(5,14)=1
 Aeq(5,15)=1
 Aeq(6,16)=1
 Aeq(6,17)=1
 Aeq(6,18)=1
 Aeq(7,19)=1
 Aeq(7,20)=1
 Aeq(7,21)=1
 Aeq(8,22)=1
 Aeq(8,23)=1
 Aeq(8,24)=1
 Aeq(9,25)=1
 Aeq(9,26)=1
 Aeq(9,27)=1
 Aeq(10,28)=1
 Aeq(10,29)=1
 Aeq(10,30)=1
 Aeq(11,31)=1
 Aeq(11,32)=1
 Aeq(11,33)=1
 Aeq(12,34)=1
 Aeq(12,35)=1
 Aeq(12,36)=1
 
beq=[25; 0; 0; 30; 26; 48; 20; 20; 10; 10; 14; 32];
 %objective
 f=[8 12 14 17 8 12 14 17 8 12 14 17 9 7 11 12 9 7 11 12 9 7 11 12 13 14 9 17 13 14 9 17 13 14 9 17];
 
%     c(1, 1, 1)=8;
%     c(1, 1, 2)=8;
%     c(1, 1, 3)=8;
%     c(2, 1, 1)=9;
%     c(2, 1, 2)=9;
%     c(2, 1, 3)=9;
%     c(3, 1, 1)=13;
%     c(3, 1, 2)=13;
%     c(3, 1, 3)=13;
%     c(1, 2, 1)=12;
%     c(1, 2, 2)=12;
%     c(1, 2, 3)=12;
%     c(2, 2, 1)=7;
%     c(2, 2, 2)=7;
%     c(2, 2, 3)=7;
%     c(3, 2, 1)=1;
%     c(3, 2, 2)=1;
%     c(3, 2, 3)=1;
%     c(1, 3, 1)=14;
%     c(1, 3, 2)=14;
%     c(1, 3, 3)=14;
%     c(2, 3, 1)=11;
%     c(2, 3, 2)=11;
%     c(2, 3, 3)=11;
%     c(3, 3, 1)=9;
%     c(3, 3, 2)=9;
%     c(3, 3, 3)=9;
%     c(1, 4, 1)=17;
%     c(1, 4, 2)=17;
%     c(1, 4, 3)=17;
%     c(2, 4, 1)=12;
%     c(2, 4, 2)=12;
%     c(2, 4, 3)=12;
%     c(3,4,1)=17;
%     c(3,4,2)=17;
%     c(3,4,3)=17;
 
 %f=0;
 %for i=1:3;
     %for j=1:4;
         %for l=1:3;
             %f=f+ c(i,j,l)* x(i,j,l);
         %end
     %end 
 %end 
 
 
 
%solve problem
x=linprog(f, A, b, Aeq, beq, lb, ub);

