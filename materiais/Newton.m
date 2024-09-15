%Condicoes iniciais
clear;
clc;
x=[0.5; 0.5; 0.5];
n=length(x);
epsilon=10^-4;
J=zeros(n,n);
f=zeros(n,1);
erro = 2*epsilon;

while (erro>epsilon)
  J = [2*x(1), 2*x(2), 2*x(3); 4*x(1),2*x(2),-4; 6*x(1), -4, 2*x(3)]
  f1=x(1)*x(1) + x(2)*x(2) + x(3)*x(3) -1;
  f2=2*x(1)*x(1) + x(2)*x(2) - 4*x(3);
  f3=3*x(1)*x(1) - 4*x(2) + x(3)*x(3);
  f = -[f1;f2;f3];

  s=zeros(n,1);

  s = EliminacaoGauss(J,f);
  xNovo = x + s;
  erro = norm(xNovo - x)/norm(xNovo);
  x = xNovo;
  
endwhile

