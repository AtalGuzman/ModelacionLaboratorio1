%Declaración de la primera función

x = 0:0.01:10*pi;

ax = 4*log(9*x-2)/log(5); %Dado que no existe una función logaritmo en base 5, se utiliza 
                            %la propiedad de cambio de base
bx = cos(4*(log(2*x+3)/log(6)))+sin(2*log(2*x+5)/log(6)); %Se aprovecha la misma propiedad utilizada anteriormente
                                                        %para expresar el
                                                        %logaritmo en base 6
              
figure1 = createfigure1(x,ax); %Se grafica la función a
set(figure1, 'Position', get(0,'Screensize')); 
saveas(figure1,'part1a','bmp')
pause(); %Se espera a que se presione un botón
clf();
close;

figure2 =createfigure2(x, bx); %Se grafica la función b
set(figure2, 'Position', get(0,'Screensize')); 
saveas(figure2,'part1b','bmp')
pause(); %Se espera a que se presione un botón
clf();
close

figure3 =createfigure3(x,[ax;bx]); %Se grafican ambas funciones
set(figure3, 'Position', get(0,'Screensize')); 
saveas(figure3,'part1c','bmp')
pause(); %Se espera a que se presione un botón
clf();
close

clear
x = -10:.05:10; %Se genera el nuevo vector de x, para la evaluación
cx = 6*exp(9*x-4); %Se define la tercer función
figure4 =createfigure4(x,cx); %Se grafica la función c con eje normal
set(figure4, 'Position', get(0,'Screensize')); 
saveas(figure4,'part1d','bmp')
pause();
clf();
close

figure5 =createfigure5(x,cx); %Se grafica la función con eje logarítmico
set(figure5, 'Position', get(0,'Screensize')); 
saveas(figure5,'part1e','bmp')
pause();
clf();
close
