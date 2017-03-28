function raiz = newton_raphson(polinomio, iteraciones, error, Xn)
    syms x; %se asigna x cmo una variable simbolica
    d_polinomio = diff(polinomio, x); %se deriva el polinomio en función a x.
    
    Xn_1 = Xn - (subs(polinomio, Xn)/subs(d_polinomio, Xn)); %se calcula el nuevo valor de x
    error_actual = (Xn_1-Xn)/Xn_1; %se calcula el valor actual para ver si es menor a la toleracia
    
    if (error_actual <= error || iteraciones == 1) %si el error es menor al solicitado o la cantidad de iteraciones
        raiz = Xn_1;                               %termina retornar el valor de la raiz
    else
        raiz = newton_raphson(polinomio, iteraciones-1, error, Xn_1); %volver a llamar la función para buscar el cero
    end
end