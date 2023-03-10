function [ U ] = GSO( V )
%Gram-Schmidt Orthogonalizationprocess
%Input : matrix V
%Output : Orthogonalcmatrix U

  n = size(V,1);
    k = size(V,2);
    U = zeros(n,k);
    U(:,1) = V(:,1)/sqrt(V(:,1)'*V(:,1));
    for i = 2:k
      U(:,i) = V(:,i);
      for j = 1:i-1
        U(:,i) = U(:,i) - ( U(:,i)'*U(:,j) )/( U(:,j)'*U(:,j) )*U(:,j);
      end
      U(:,i) = U(:,i)/sqrt(U(:,i)'*U(:,i));
    end
end

