function varargout = project4(varargin)
% PROJECT4 M-file for project4.fig
%      PROJECT4, by itself, creates a new PROJECT4 or raises the existing
%      singleton*.
%
%      H = PROJECT4 returns the handle to a new PROJECT4 or the handle to
%      the existing singleton*.
%
%      PROJECT4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT4.M with the given input arguments.
%
%      PROJECT4('Property','Value',...) creates a new PROJECT4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project4

% Last Modified by GUIDE v2.5 02-Jul-2011 00:30:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project4_OpeningFcn, ...
                   'gui_OutputFcn',  @project4_OutputFcn, ...
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


% --- Executes just before project4 is made visible.
function project4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project4 (see VARARGIN)

% Choose default command line output for project4
handles.output = hObject;
set(hObject,'toolbar','figure')
axes(handles.axes1)
for i=1:10
    handles.x(i)=rand;
    handles.y(i)=rand;
    handles.z(i)=rand;
plot3(handles.x(i),handles.y(i),handles.z(i),'*b');
hold on
grid on
text(handles.x(i),handles.y(i),handles.z(i),num2str(i))
end


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2)
pi=3.141592654;
landa=str2num(get(handles.landa,'string'));
kapa=str2num(get(handles.kapa,'string'))*pi/180;
xt=str2num(get(handles.xt,'string'))/100;
yt=str2num(get(handles.yt,'string'))/100;
omega=str2num(get(handles.omega,'string'))*pi/180;
phi=str2num(get(handles.phi,'string'))*pi/180;
zt=str2num(get(handles.zt,'string'))/100;
omega_matrix=[1 0 0;0 cos(omega) sin(omega);0 -sin(omega) cos(omega)];
phi_matrix=[cos(phi) 0 -sin(phi);0 1 0;sin(phi) 0 cos(phi)];
kapa_matrix=[cos(kapa) sin(kapa) 0;-sin(kapa) cos(kapa) 0;0 0 1];
t_matrix=[xt;yt;zt];
R=kapa_matrix*phi_matrix*omega_matrix;
for i=1:10
    X=[handles.x(i);handles.y(i);handles.z(i)];
    temp1=R*X;
    temp2=landa*temp1;
    temp3=temp2+t_matrix;
    plot3(temp3(1,1),temp3(2,1),temp3(3,1),'*g')
    hold on
    grid on
    text(temp3(1,1),temp3(2,1),temp3(3,1),num2str(i))
end    





function omega_Callback(hObject, eventdata, handles)
% hObject    handle to omega (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of omega as text
%        str2double(get(hObject,'String')) returns contents of omega as a double


% --- Executes during object creation, after setting all properties.
function omega_CreateFcn(hObject, eventdata, handles)
% hObject    handle to omega (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phi_Callback(hObject, eventdata, handles)
% hObject    handle to phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phi as text
%        str2double(get(hObject,'String')) returns contents of phi as a double


% --- Executes during object creation, after setting all properties.
function phi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zt_Callback(hObject, eventdata, handles)
% hObject    handle to zt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zt as text
%        str2double(get(hObject,'String')) returns contents of zt as a double


% --- Executes during object creation, after setting all properties.
function zt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function landa_Callback(hObject, eventdata, handles)
% hObject    handle to landa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of landa as text
%        str2double(get(hObject,'String')) returns contents of landa as a double


% --- Executes during object creation, after setting all properties.
function landa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to landa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kapa_Callback(hObject, eventdata, handles)
% hObject    handle to kapa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kapa as text
%        str2double(get(hObject,'String')) returns contents of kapa as a double


% --- Executes during object creation, after setting all properties.
function kapa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kapa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xt_Callback(hObject, eventdata, handles)
% hObject    handle to xt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xt as text
%        str2double(get(hObject,'String')) returns contents of xt as a double


% --- Executes during object creation, after setting all properties.
function xt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yt_Callback(hObject, eventdata, handles)
% hObject    handle to yt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yt as text
%        str2double(get(hObject,'String')) returns contents of yt as a double


% --- Executes during object creation, after setting all properties.
function yt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
