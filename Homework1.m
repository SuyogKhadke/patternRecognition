
%% 1.	Sketch the likelihood function
clc
x1 = -10:0.0001:10;
y1 = normpdf(x1,0,1);
x2 = -10:0.0001:10;
y2 = normpdf(x2,2,4);
plot(x1,y1,x2,y2);
fun(5,0,1)
fun(5,2,4)
%%
%%

clc
evidence = y1*0.6  + y2*0.4;

plot(evidence)
evidence_5 = fun(5,0,1)*0.6 + fun(5,2,4)*04
%%
clc
posterior1 = (y1*0.6)./(y1*0.6  + y2*0.4);
posterior2 = (y2*0.4)./(y1*0.6  + y2*0.4);
plot(x1,posterior1,x2,posterior2);
grid on;
posterior1_5 = (fun(5,0,1)*0.6)./evidence_5
posterior2_5 = (fun(5,2,4)*0.4)./evidence_5

%%
%likelihood ratio
clc
R = y1./y2;
plot(x1,R);
grid on

% When x = 5 likelihood ratio 
R_5 = fun(5,0,1)./fun(5,2,4)
%%
clc
threshold=4/3;
c1=(R>=threshold);
c2=(R<threshold);
R1=c1.*(4*posterior2);
R2=c2.*(2*posterior1);
plot(x1,R1,x2,R2);
4*posterior2_5*evidence_5
2*posterior1_5*evidence_5

%%

function [p] = fun(x,mean,sd)
   p = (1/(sd*(sqrt(2*pi))))*(exp(-0.5*((x-mean)^2)/sd^2));


end

 
