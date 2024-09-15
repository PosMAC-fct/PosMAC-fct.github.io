function x=EliminacaoGauss(A,b)
  
  
  %Eliminacao de Gauss
  n=length(A);
  x=xNovo=zeros(n,1);
  for k=1:n-1
    for i=k+1:n
      aux = A(i,k);
      b(i) = b(i) - b(k)*(aux/A(k,k));
      for j=k:n
        A(i,j) = A(i,j) - A(k,j)*(aux/A(k,k));
      endfor
    endfor
  endfor
  %A;
  %b;
  %Retro-substituição
  x(n) = b(n)/A(n,n);
  
  for i=1:n-1
    soma=0;
    for k=(n-i+1):n
      soma=soma + A(n-i,k)*x(k);
    endfor
    x(n-i) = (b(n-i) - soma)/A(n-i,n-i);
  endfor
  
endfunction
