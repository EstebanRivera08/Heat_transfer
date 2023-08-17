
disp(' ')
disp('Problemas de transferencia de calor')
disp('Problema 1D-Vara en estado transitorio')
disp('PARAMETROS ')

% Parametros
disp('Revise que todo esté en las mismas unidades: ')
k=input('Ingrese el valor del coeficiente de conductividad térmica: '); %Watt/m C
Alfa=input('ingrese la difusividad térmica (k/(rho*Cp)): '); %(m^2/s)

% Pasos y dominio

Lx=input('¿Cual es la longitud de la vara? (m): '); % (m)
Nx=input('Cantidad de particiones para la vara: ') ;
Duracion=input('¿Cuanto tiempo quiere que suceda durante la simulación? (seg): '); %particiones
dx=Lx/(Nx);  %deltax (m)
ymin=input('Límite inferior de la gráfica: ');
ymax=input('Límite superior de la gráfica: ');

%condicion CFL (Courant-Friedrichs-Levy) 

C=1/2; %Número de Courant (C<1)
dt=C*1/Alfa*(dx)^2 ; %(seg)
Nt=Duracion/dt ;
%Variables de campo

Tn=zeros(1,Nx+1); %Temperatura
x=linspace(0, Lx, Nx+1); %x distancia

       
%Condiciones iniciales
disp('CONDICIONES INICIALES')
t=input('Ingrese el tiempo de inicio t0 (seg): ');
Tn(:)=input('Temperatura de la barra (ºC): ') ;

%Condiciones de frontera
disp('CONDICIONES DE FRONTERA')
disp('1 -> Extremos con temperatura constante')
disp('2 -> Extremos con convección')

while 1
    Tipo=input('Ingrese el número que corresponde al tipo de problema: ') ;
   if Tipo==1||Tipo==2
      break
   else
       disp('Digite un número en las opciones')
   end
end  

  if Tipo==1
    while 1
        Tn(1)=input('Ingrese la temperatura del extremo izquierdo (ºC): ');
        Tn(end)=input('Ingrese la temperatura del extremo derecho (ºC): ') ;
       if Tn(1)~=Tn(end) 
           break
       end
       if Tn(1)==Tn(end) && Tn(1)==Tn(Nx/2)
           disp('La temperatura de los extremos debe ser diferente de la temperatura de la vara: ')
       end
    end    
  end    
        

    if Tipo==2
     h=input('Ingrese el valor del coeficiente de convección: '); %Watt(m^2 C)
     Tinf=input('Temperatura (ºC) ambiente o del fluido que general convección: ') ; %Temperatura ambiente                
        
        disp('¿En cual extremo tiene convección?')
        disp(' 1 -> Izquierdo')
        disp(' 2 -> Derecho')
        disp(' 3 -> Los dos')
       
        while 1
         Extremo=input('ingrese el extremo en el que tiene convección: ');
            if Extremo==1||Extremo==2||Extremo==3
                break
            else    
               disp('Digite un valor dentro de las opciones')
            end
        end 
        
      if Extremo==1
        Tn(end)=input('Ingrese la temperatura del extremo derecho (ºC): ') ;
      end
      if Extremo==2
         Tn(1)=input('Ingrese la temperatura del extremo izquierdo (ºC): '); 
      end
      if Extremo==3    
            if Tn(Nx/2)==Tinf
      disp('Recuerde que si la temperatura de la vara es igual a la temperatura del medio, no habrá cambio en la distribución de temperatura')
            end    
      end     
      
    end  
      

%Enlace

 for n=1:Nt+1
     Tc=Tn; %se guarda la temperatura en Tc para un uso posterior
     
     t=t+dt; %tiempo nuevo
     %Temperatura nueva
   for i=1:Nx+1
     if (Tipo==1)
        if (i>1 && i<Nx+1)
         Tn(i)=Tc(i)+dt*Alfa*(Tc(i+1)-2*Tc(i)+Tc(i-1))/dx^2;    
        end
     end
     
     if Tipo==2
         
        if Extremo==2  
            if i>1 && i<Nx+1
         Tn(i)=Tc(i)+dt*Alfa*(Tc(i+1)-2*Tc(i)+Tc(i-1))/dx^2;        
            end
            if i==Nx+1
         Tn(i)=1/(k+dx*h)*(k*Tc(i-1)+h*dx*Tinf);         
            end
        end
        if Extremo==1
            if i>1 && i<Nx+1
         Tn(i)=Tc(i)+dt*Alfa*(Tc(i+1)-2*Tc(i)+Tc(i-1))/dx^2;        
            end
            if i==1
         Tn(i)=Tc(i+1)-(h*dx/k)*(Tc(i+1)-Tinf);  
            end   
        end
         if Extremo==3  
            if (i>1 && i<Nx+1)
         Tn(i)=Tc(i)+dt*Alfa*(Tc(i+1)-2*Tc(i)+Tc(i-1))/dx^2;    
            end
            if i==1
         Tn(i)=Tc(i+1)-(h*dx/k)*(Tc(i+1)-Tinf); 
            end
            if i==Nx+1
         Tn(i)=1/(k+dx*h)*(k*Tc(i-1)+h*dx*Tinf);         
            end
         end
     end
   end
        
     %visualización
     
     plot(x, Tn, 'k-',x(end),Tn(end),'ro',x(1),Tn(1),'ro');
     xlim([0 Lx]); ylim([ymin ymax])
     xlabel('Distancia de la vara (m)'); ylabel('Temperatura (ºC)');
     title(sprintf('Tiempo = %f segundos', t));
     pause(Nt/100);
     
 end
 
disp('Se ha resuelto su problema :D')
disp('Puede utilizar unidades diferentes siempre y cuando ingrese entradas dimensionalmente homogeneas ')


