function resultado = operacion(vector)
    ordenar = sort(vector); %se ordena el vector
    if(ordenar(1) < 0) %se revisa que no existan numeros negativos en el vector
        fprintf('Existen numeros negativos en el vector\n')
    elseif(length(ordenar)< 4)%se revisa que el largo del vector no se inferior a 4
        fprintf('La cantidad de elementos del vector no es suficiente\n')
    else
        menores = sqrt(ordenar(1:4)); %se obtienen los 4 menores numeros con su raiz respectiva
        mayores = sqrt(ordenar(end-3:end)); %se obtienen los 4 mayores numeros con su raiz respectiva
        resultado = sum(mayores) - sum(menores);% se obtiene el resultado a la operación
    end
    
end