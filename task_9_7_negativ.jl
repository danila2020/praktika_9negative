# приведение матрицы к ступенчатому виду
function convert!(A)
    i=1
    j=1
    for i in 1:length(A[i])
        for j in 1:length(A[j])
         if (A[i,j]>0 && A[i+1,j]>0)
            if A[i,j]<A[i+1,j]
                chislo=A[i,j]
            else
                chislo=A[i+1,j]
            end
            A[1,j]=chislo
            n=A[i+1,j]/A[1,j]
            n1=A[i+2,j]/A[1,j]
            if n>=1
                A[i+1,j]=-n*A[1,j]+A[i+1,j]
                A[i+1,j+1]=-n*A[1,j+1]+A[i+1,j+1]
                A[i+2,j]=-n1*A[1,j]+A[i+2,j]
                A[i+2,j+2]=-n1*A[1,j+2]+A[i+2,j+2]
            end
         elseif (A[i,j]<0 && A[i+1,j]<0)
            if A[i,j]>A[i+1,j]
                chislo=A[i,j]
            else
                chislo=A[i+1,j]
            end
            A[1,j]=chislo
            n=A[i+1,j]/A[1,j]
            n1=A[i+2,j]/A[1,j]
            if n>=1
                A[i+1,j]=-n*A[1,j]+A[i+1,j]
                A[i+1,j+1]=-n*A[1,j+1]+A[i+1,j+1]
                A[i+2,j]=-n1*A[1,j]+A[i+2,j]
                A[i+3,j+1]=-n1*A[1,j+1]+A[i+3,j+1]
            end
         end
        end
    end
    return A
end