function x = GaussianElimination2(n,a,b,x)
xmult=0;
sum=0;
for k=1:n-1
    for i= k+1:n
        xmult= a(i,k)/a(k,k)

        for j=k:n
            a(i,j)=  a(i,j)- xmult*a(k,j) ;
        end
        b(i)= b(i)- xmult*b(k);
    end
end
x(n)=b(n)/a(n,n);
for i=n-1:-1:1
    sum= b(i);
    for j=i+1:n
        sum = sum-a(i,j)*x(j);
    end
    x(i)= sum/a(i,i);
end

end
