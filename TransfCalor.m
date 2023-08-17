clear all
clc

IterMax=10000 ;
Error=0.0001 ;


disp('Taller Transferencia de calor');
disp(' ')

%Inputs

%VARIABLES DEL EJECICIO PARA VARIAR

q = 10000; %(W/m3)
k = 0.5 ; %(W/mK)
T_0 = 1200 ; %(ºC)
h_0 = 70 ; %(W/m2K)
T_infinito = 15 ; %(ºC)
h_infinito = 25 ;%(W/m2K)

%Variables del ejercicio

Lx=3.60 ; %m
Ly=2.40 ; %m

Nx=45 ;

dx=Lx/2/Nx ;
dy=dx ;

Ny=round(Ly/2/dy,0) ;

x=linspace(0,Lx/2,Nx+1) ;
y=linspace(0,Ly/2,Ny+1) ;

D=zeros(Ny+1,Nx+1) ;
T=zeros(Ny+1,Nx+1) ;
Tf=zeros(Ny+1,Nx+1) ;
n=0 ;
error=10 ;

while n<IterMax && error>Error

for i=1:Nx+1
    for j=1:Ny+1
        
     if j>=1 && j<(Ny*60/(Ly*100/2)+1) && i>=1 && i<(Nx*120/(Lx*100/2)+1)%Parte cuadrado interno
         T(j,i)=T_0 ;
     end
     
     if j==(Ny*60/(Ly*100/2)+1) && i>1 && i<(Nx*120/(Lx*100/2)+1) %Borde interno inferor 
         T(j,i)=((q*dx^2/k)+T(j,i+1)+T(j,i-1)+2*T(j+1,i)+(2*dx*h_0*T_0)/k)/(4+(2*h_0*dx/k)) ;
     end
     
     if i==(Nx*120/(Lx*100/2)+1) && j>1 && j<(Ny*60/(Ly*100/2)+1) %Borde interno derecho 
         T(j,i)=((q*dx^2/k)+T(j+1,i)+T(j-1,i)+2*T(j,i+1)+(2*dx*h_0*T_0)/k)/(4+(2*h_0*dx/k)) ;
     end

     if i==Nx+1 && j>1 &&  j<Ny+1 %Borde externo derecho
         T(j,i)=((q*dx^2/k)+T(j+1,i)+T(j-1,i)+2*T(j,i-1)+(2*dx*h_infinito*T_infinito)/k)/(4+(2*h_infinito*dx)/k) ;
     end
     
     if j==Ny+1 && i>1 && i<Nx+1 %Borde externo inferior
         T(j,i)=((q*dx^2/k)+T(j,i-1)+2*T(j-1,i)+T(j,i+1)+(2*dx*h_infinito*T_infinito)/k)/(4+(2*h_infinito*dx)/k) ;     
     end
     
     if j==1 && i>(Nx*120/(Lx*100/2)+1) && i<Nx+1 %Borde aislado superior
         T(j,i)=1/4*(T(j,i-1)+2*T(j+1,i)+T(j,i+1)+(q*dx^2)/k) ;
     end
     
     if i==1 && j>(Ny*60/(Ly*100/2)+1) && j<Ny+1 %Borde aislado izquierdo
         T(j,i)=1/4*(T(j-1,i)+2*T(j,i+1)+T(j+1,i)+(q*dx^2)/k) ;
     end
     
     if i==(Nx*120/(Lx*100/2)+1) && j==(Ny*60/(Ly*100/2)+1) %Esquina interior del horno
         T(j,i)=(2*(T(j+1,i)+T(j,i+1))+T(i,j-1)+T(j,i-1)+(2*h_0*dx*T_0)/k+(q*3/2*dx^2)/k)/(6+(2*h_0*dx)/k) ;
     end
     
     if i==Nx+1 && j==Ny+1 %Esquina externa
         T(j,i)=(T(j,i-1)+T(j-1,i)+(2*h_infinito*dx*T_infinito)/k+((q*dx^2)/(2*k)))/(2+(2*h_infinito*dx/k)) ;
     end
     
     if i==Nx+1 && j==1 %Esquina externa superior derecha
         T(j,i)=(T(j+1,i)+T(j,i-1)+(h_infinito*dx*T_infinito)/k+(q*dx^2)/(2*k))/(2+(h_infinito*dx)/k) ;
     end
     
     if i==(Nx*120/(Lx*100/2)+1) && j==1 %Esquina interna superior derecha
         T(j,i)=(T(j+1,i)+T(j,i+1)+(h_0*dx*T_0)/k+(q*dx^2)/(2*k))/(2+(h_0*dx)/k) ;
     end
     
     if i==1 && j==(Ny*60/(Ly*100/2)+1) %Esquina interna inferior izquierda
         T(j,i)=(T(j+1,i)+T(j,i+1)+(h_0*dx*T_0)/k+(q*dx^2)/(2*k))/(2+(h_0*dx)/k) ;
     end
     
     if i==1 && j==Ny+1 %Esquina externa inferior izquierda
         T(j,i)=(T(j,i+1)+T(j-1,i)+(h_infinito*dx*T_infinito/k)+(q*dx^2/2*k))/(2+(h_infinito*dx/k)) ;
     end
     
     if (i>1 && i<Nx+1 && j>(Ny*60/(Ly*100/2)+1) && j<Ny+1)||...
             (i>(Nx*120/(Lx*100/2)+1) && i<Nx+1 && j>1 && j<=(Ny*60/(Ly*100/2)+1))
        T(j,i)=1/4*(q*dx^2/k+T(j,i+1)+T(j,i-1)+T(j-1,i)+T(j+1,i)) ;
     end
         
    end
end

error=0 ;
for i=1:Nx+1
    for j=1:Ny+1
        D(j,i)=abs(Tf(j,i)-T(j,i)) ;
        error=error+D(j,i) ;
        Tf(j,i)=T(j,i) ;
    end
end

n=n+1 ;
end

figure('Color','White')
t = tiledlayout(2,2);
t.TileSpacing = 'compact';
t.Padding = 'compact';

nexttile([1,2])
y=sort(y,'descend') ;
s=surf(x,y,Tf,'FaceAlpha',0.5); %Superficie (FaceAlpha=transparencia)
colormap('jet')
axis tight %Ajuste de límites de la gráfica
hold on
imagesc(x,y,Tf)
title('a)')
colorbar

nexttile
y=sort(y) ;
surf(x,y,Tf,'FaceAlpha',0)
imagesc(x,y,Tf)
view(2)
title('b)')
colormap('jet') 


nexttile

y=sort(y,'descend') ;
contour(x,y,Tf,20)
title('c)')


figure('Color','White')
t = tiledlayout(2,2);
t.TileSpacing = 'compact';
t.Padding = 'compact';

nexttile([1,2])
T=[flip(flip(Tf,2)) flip(Tf);fliplr(Tf)  Tf] ;
x=linspace(0,Lx,Nx*2+2) ;
y=linspace(0,Ly,Ny*2+2) ;

y=sort(y,'descend') ;
s=surf(x,y,T,'FaceAlpha',0.5); %Superficie (FaceAlpha=transparencia)
colormap('jet')
axis tight %Ajuste de límites de la gráfica
hold on
imagesc(x,y,T)
colorbar
title('a)')

nexttile
imagesc(x,y,T)
title('b)')
colormap('jet') 

nexttile
contour(x,y,T,20)
title('c)')

NodosPared = size(Tf,1)+size(Tf,2)-1 ;
Tpared = ones(size(Tf))*T_infinito ;
Tpared(1:end,end) = Tf(1:end,end) ;
Tpared(end,1:end) = Tf(end,1:end) ; 
Qliberado = 4*(h_infinito*dx*dy*(sum(NodosPared,'all'))*(sum(Tpared-T_infinito,'all')-Tf(end,end)/2))/1000 ;

Q = sprintf('El calor liberado por la pared a los alredores es de: %.3f kW',Qliberado)

