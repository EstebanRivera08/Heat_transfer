function varargout = Placa2D_Calor(varargin)
% PLACA2D_CALOR MATLAB code for Placa2D_Calor.fig
%      PLACA2D_CALOR, by itself, creates a new PLACA2D_CALOR or raises the existing
%      singleton*.
%
%      H = PLACA2D_CALOR returns the handle to a new PLACA2D_CALOR or the handle to
%      the existing singleton*.
%
%      PLACA2D_CALOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLACA2D_CALOR.M with the given input arguments.
%
%      PLACA2D_CALOR('Property','Value',...) creates a new PLACA2D_CALOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Placa2D_Calor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Placa2D_Calor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Placa2D_Calor

% Last Modified by GUIDE v2.5 06-Dec-2020 10:16:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Placa2D_Calor_OpeningFcn, ...
                   'gui_OutputFcn',  @Placa2D_Calor_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Placa2D_Calor is made visible.
function Placa2D_Calor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Placa2D_Calor (see VARARGIN)

% Choose default command line output for Placa2D_Calor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Placa2D_Calor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Placa2D_Calor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
opcion = get(handles.popupmenu1,'Value');
if opcion == 1
    set(handles.uibuttongroup1,'Visible','off');
    set(handles.edit4,'Visible','on');
    set(handles.edit5,'Visible','on');
    set(handles.edit6,'Visible','on');
    set(handles.edit7,'Visible','on');

else
    set(handles.uibuttongroup1,'Visible','on');
 
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Max=10000; %Número de iteraciones maximo
Errmax=0.0001; %Error maximo permitido
error=10;

Lx=str2double(get(handles.edit1,'string')) ; % (cm)
Ly=str2double(get(handles.edit2,'string')) ; % (cm)
Nx=str2double(get(handles.edit3,'string'));
Ny=Nx; %particiones
dx=Lx/(Nx); dy=Ly/(Ny);  %deltax (m)

%Variables de campo

T=zeros(Ny+1,Nx+1); %Temperatura
Tf=zeros(Ny+1,Nx+1); %Temperatura Nueva
D=zeros(Ny+1,Nx+1); %Diferencia
x=linspace(0,Lx,Nx+1); %x distancia
y=linspace(0,Ly,Ny+1); %y distancia

%Enlace 
k=0; 
    %Condiciones de frontera
    
Bordes=get(handles.popupmenu1,'Value') ;

    
    BIZQ=str2double(get(handles.edit4,'string')) ;
    BDER=str2double(get(handles.edit5,'string')) ;
    BINF=str2double(get(handles.edit6,'string')) ;
    BSUP=str2double(get(handles.edit7,'string')) ;

if Bordes==2
    
    biz = get(handles.checkbox1,'Value') ;
    bde = get(handles.checkbox2,'Value') ;
    bsup = get(handles.checkbox4,'Value') ;
    binf = get(handles.checkbox3,'Value') ;

    
      if biz && ~bde && ~bsup && ~binf
    T(:,end)=BDER ;
    T(end,:)=BSUP ; % (ºC)
    T(1,:)=BINF ; % (ºC)
      end
      if ~biz && bde && ~bsup && ~binf
    T(:,1)=BIZQ ; % (ºC)
    T(end,:)=BSUP ; % (ºC)
    T(1,:)=BINF ; % (ºC)
      end
      if ~biz && ~bde && ~bsup && binf    
    T(:,1)=BIZQ ; % (ºC)
    T(:,end)=BDER ;
    T(end,:)=BSUP ; % (ºC)
      end     
      if ~biz && ~bde && bsup && ~binf    
    T(:,1)=BIZQ ; % (ºC)
    T(:,end)=BDER ;
    T(1,:)=BINF ; % (ºC)      
      end 
      if biz && bde && ~bsup && ~binf      %Bordes 1 y 2
    T(end,:)=BSUP; % (ºC)
    T(1,:)=BINF ; % (ºC)
      end
      if biz && ~bde && ~bsup && binf      %Bordes 1 y 3
    T(:,end)=BDER ;
    T(end,:)=BSUP ; % (ºC)
      end
      if biz && ~bde && bsup && ~binf      %Bordes 1 y 4
    T(:,end)=BDER  ;
    T(1,:)=BINF ; % (ºC)
      end
      if ~biz && bde && ~bsup && binf      %Bordes 2 y 3
    T(:,1)=BIZQ ; % (ºC)
    T(end,:)=BSUP; % (ºC)
      end
      if ~biz && bde && ~bsup && binf     %Bordes 2 y 4
    T(:,1)=BIZQ ; % (ºC)
    T(end,:)=BSUP ; % (ºC)       
      end
      if ~biz && ~bde && bsup && binf %Bordes 3 y 4
    T(:,1)=BIZQ ; % (ºC)
    T(:,end)=BDER ;
      end      
else
    T(:,1)=BIZQ ; % (ºC)
    T(:,end)=BDER  ;
    T(end,:)=BSUP ; % (ºC)
    T(1,:)=BINF ; % (ºC)
end
    
    
while(k < Max && error > Errmax)

    T(1,1)=1/2*(T(2,1)+T(1,2)); %esquina izq.-sup.
    T(end,1)=1/2*(T(end-1,1)+T(end,2)); %esquina izq.-inf.
    T(1,end)=1/2*(T(1,end-1)+T(2,end)) ; %esquina der.-dup.
    T(end,end)=1/2*(T(end,end-1)+T(end-1,end)) ;%esquina der.-inf.
    
     for i=1:Nx+1
          for j=1:Ny+1
     
       if Bordes==2      
    
       if biz && ~bde && ~bsup && ~binf %Borde 1
              if(j>=2 && j<=Ny && i==1)
      T(j,i)=1/4*(2*T(j,i+1)+T(j+1,i)+T(j-1,i)); %borde izquierdo aislado
              end
      end
      if ~biz && bde && ~bsup && ~binf  %Borde 2
              if(j>=2 && j<=Ny && i==Nx+1)
      T(j,i)=1/4*(2*T(j,i-1)+T(j+1,i)+T(j-1,i)); %borde derecho aislado      
              end
      end
      if ~biz && ~bde && ~bsup && binf   %Borde 3
              if(i>=2 && i<=Nx && j==1)
      T(j,i)=1/4*(2*T(j+1,i)+T(j,i+1)+T(j,i-1)); %borde arriba aislado      
              end 
      end     
      if ~biz && ~bde && bsup && ~binf    %Borde 4
              if(i>=2 && i<=Nx && j==Ny+1)
      T(j,i)=1/4*(2*T(j-1,i)+T(j,i+1)+T(j,i-1)); %borde abajo aislado                  
              end
      end 
      if biz && bde && ~bsup && ~binf  %Bordes 1 y 2
              if(j>=2 && j<=Ny && i==1) 
      T(j,i)=1/4*(2*T(j,i+1)+T(j+1,i)+T(j-1,i)); %borde izquierdo aislado
              end
              if(j>=2 && j<=Ny && i==Nx+1)
      T(j,i)=1/4*(2*T(j,i-1)+T(j+1,i)+T(j-1,i)); %borde derecho aislado  
              end
      end
      if biz && ~bde && ~bsup && binf  %Bordes 1 y 3
              if(j>=2 && j<=Ny && i==1)
      T(j,i)=1/4*(2*T(j,i+1)+T(j+1,i)+T(j-1,i)); %borde izquierdo aislado
              end
              if(i>=2 && i<=Nx && j==1)
      T(j,i)=1/4*(2*T(j+1,i)+T(j,i+1)+T(j,i-1)); %borde arriba aislado      
              end 
      end
      if biz && ~bde && bsup && ~binf  %Bordes 1 y 4
              if(j>=2 && j<=Ny && i==1)
      T(j,i)=1/4*(2*T(j,i+1)+T(j+1,i)+T(j-1,i)); %borde izquierdo aislado
              end
              if(i>=2 && i<=Nx && j==Ny+1)
      T(j,i)=1/4*(2*T(j-1,i)+T(j,i+1)+T(j,i-1)); %borde abajo aislado                  
              end
      end
      if ~biz && bde && bsup && ~binf  %Bordes 2 y 3
              if(j>=2 && j<=Ny && i==Nx+1)
      T(j,i)=1/4*(2*T(j,i-1)+T(j+1,i)+T(j-1,i)); %borde derecho aislado      
              end
              if(i>=2 && i<=Ny && j==Ny+1)
      T(j,i)=1/4*(2*T(j+1,i)+T(j,i+1)+T(j,i-1)); %borde abajo aislado      
              end 
      end
      if ~biz && bde && ~bsup && binf  %Bordes 2 y 4
              if(j>=2 && j<=Ny && i==Nx+1)
      T(j,i)=1/4*(2*T(j,i-1)+T(j+1,i)+T(j-1,i)); %borde derecho aislado      
              end
              if(i>=2 && i<=Nx && j==1)
      T(j,i)=1/4*(2*T(j+1,i)+T(j,i+1)+T(j,i-1)); %borde superior aislado                  
              end
      end
      if ~biz && ~bde && bsup && binf %Bordes 3 y 4
              if(i>=2 && i<=Nx && j==1)
      T(j,i)=1/4*(2*T(j+1,i)+T(j,i+1)+T(j,i-1)); %borde superior aislado      
              end 
              if(i>=2 && i<=Nx && j==Ny+1)
      T(j,i)=1/4*(2*T(j-1,i)+T(j,i+1)+T(j,i-1)); %borde abajo aislado                  
              end
      end
      if   (i>=2 && i<=Nx && j>=2 && j<=Nx)
      T(j,i)=1/4*(T(j,i+1)+T(j,i-1)+T(j+1,i)+T(j-1,i));     
      end          
                  
       else 
           
        if(i>=2 && i<=Nx && j<=Ny && j>=2)
      T(j,i)=1/4*(T(j,i+1)+T(j,i-1)+T(j+1,i)+T(j-1,i));
        end   
        
      end
          end
     end

              
   error=0; 
   
     for i=1:Nx+1
         for j=1:Ny+1           
             D(j,i)=abs(Tf(j,i)-T(j,i)); %Valor absoluto de la diferencia
             error=error+D(j,i);             
             Tf(j,i)=T(j,i);          
         end
     end
     
     k=k+1;
     
end

Tx=zeros(Ny+1,Nx+1);
Ty=zeros(Ny+1,Nx+1);


   for i=1:Nx+1
       for j=1:Ny+1
            
        if ((j>=1 && j<=Ny && i==Nx+1)||(j>=1 && j<=Ny && i==1)||...
                 (i>=1 && i<=Ny && j==1)||(i>=1 && i<=Nx && j==Ny+1)||...
                        (i==Nx+1 && j==Ny+1))
             
            if(j>=1 && j<=Ny && i==Nx+1)  %Borde derecho placa)
         Tx(j,i)=1/dx*(Tf(j,i)-Tf(j,i-1)) ;
         Ty(j,i)=1/dy*(Tf(j+1,i)-Tf(j,i)) ;
            end
 
            if(j>=1 && j<=Ny && i==1)  %Borde izquierdo placa)
         Tx(j,i)=1/dx*(Tf(j,i+1)-Tf(j,i)) ;
         Ty(j,i)=1/dy*(Tf(j+1,i)-Tf(j,i)) ;
            end           
            
            if(i>=1 && i<=Ny && j==1)  %Borde superior placa
         Tx(j,i)=1/dx*(Tf(j,i+1)-Tf(j,i)) ;    
         Ty(j,i)=1/dy*(Tf(j+1,i)-Tf(j,i)) ;       
            end
 
            if(i>=1 && i<=Nx && j==Ny+1)  %Borde inferior placa
         Tx(j,i)=1/dx*(Tf(j,i+1)-Tf(j,i)) ;    
         Ty(j,i)=1/dy*(Tf(j,i)-Tf(j-1,i)) ;       
            end
            
            if (i==Nx+1 && j==Ny+1)
         Tx(j,i)=1/dx*(Tf(j,i)-Tf(j,i-1)) ;    
         Ty(j,i)=1/dy*(Tf(j,i)-Tf(j-1,i)) ;       
            end
            
       else               
         Tx(j,i)=1/dx*(Tf(j,i+1)-Tf(j,i)) ; 
         Ty(j,i)=1/dy*(Tf(j+1,i)-Tf(j,i)) ;           
       end       
        
        end
   end         

% Normalizado
Txn=zeros(Ny+1,Nx+1) ;
Tyn=zeros(Ny+1,Nx+1) ;


    for i=1:Nx+1
        for j=1:Ny+1
       
       Txn(j,i)=1/((Tx(j,i)^2+Ty(j,i)^2)^(1/2))*Tx(j,i) ;
       Tyn(j,i)=1/((Tx(j,i)^2+Ty(j,i)^2)^(1/2))*Ty(j,i) ;
        
        end
    end

    [X,Y]=meshgrid(x,y);


    
axes(handles.axes1)
cla
surf(x,y,Tf,'FaceAlpha',0.0005,'EdgeColor','none'); %Superficie (FaceAlpha=transparencia)
%Propiedades de la superficie
colormap('jet')
view(2)%Vista en 2D
axis tight %Ajuste de límites de la gráfica
hold on
imagesc(x,y,Tf)
colormap('jet') 
colorbar


axes(handles.axes2)
cla
surf(x,y,Tf,'FaceAlpha',0.5); %Superficie (FaceAlpha=transparencia)
colormap('jet')
axis tight %Ajuste de límites de la gráfica
hold on
imagesc(x,y,Tf)


axes(handles.axes3)
cla
contour(x,y,Tf,50)

axes(handles.axes4)
cla
quiver(X,Y,-Txn,-Tyn);
hold on
axis tight
%contour(x,y,Tf,70,'LineWidth', 1,'ShowText', 'off')
colormap('jet')

    

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of checkbox1
if ~get(handles.checkbox1,'Value')
    set(handles.edit4,'Visible','on');
else
    set(handles.edit4,'Visible','off');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
if ~get(handles.checkbox2,'Value')
    set(handles.edit5,'Visible','on');
else
    set(handles.edit5,'Visible','off');
end

% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3
if ~get(handles.checkbox3,'Value')
    set(handles.edit6,'Visible','on');
else
    set(handles.edit6,'Visible','off');
end

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4
if ~get(handles.checkbox4,'Value')
    set(handles.edit7,'Visible','on');
else
    set(handles.edit7,'Visible','off');
end


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
