function varargout = project3(varargin)
% PROJECT3 M-file for project3.fig
%      PROJECT3, by itself, creates a new PROJECT3 or raises the existing
%      singleton*.
%
%      H = PROJECT3 returns the handle to a new PROJECT3 or the handle to
%      the existing singleton*.
%
%      PROJECT3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT3.M with the given input arguments.
%
%      PROJECT3('Property','Value',...) creates a new PROJECT3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project3

% Last Modified by GUIDE v2.5 14-May-2011 12:53:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project3_OpeningFcn, ...
                   'gui_OutputFcn',  @project3_OutputFcn, ...
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


% --- Executes just before project3 is made visible.
function project3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project3 (see VARARGIN)

% Choose default command line output for project3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function popupmenu1_Callback(hObject, eventdata, handles)


function popupmenu1_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function popupmenu2_Callback(hObject, eventdata, handles)


function popupmenu2_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function popupmenu3_Callback(hObject, eventdata, handles)


function popupmenu3_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py1_Callback(hObject, eventdata, handles)


function py1_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py2_Callback(hObject, eventdata, handles)


function py2_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py3_Callback(hObject, eventdata, handles)


function py3_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py4_Callback(hObject, eventdata, handles)


function py4_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py5_Callback(hObject, eventdata, handles)


function py5_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function py6_Callback(hObject, eventdata, handles)


function py6_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton1_Callback(hObject, eventdata, handles)
set(handles.domegaprim,'string','')
set(handles.domegazegond,'string','')
set(handles.dkapaprim,'string','')
set(handles.dkapazegond,'string','')
set(handles.byprim,'string','')
set(handles.byzegond,'string','')
set(handles.dfiprim,'string','')
set(handles.dfizegond,'string','')  
set(handles.bzprim,'string','')
set(handles.bzzegond,'string','')
pi=3.1416;
b=0.1;
d=0.1;
z=0.15;
if get(handles.popupmenu1,'value')==1
    A(1:6,1)=[z;z;z*(1+(d/z)^2);z*(1+(d/z)^2);z*(1+(d/z)^2);z*(1+(d/z)^2)]
else
    A(1:6,1)=[-z;-z;-z*(1+(d/z)^2);-z*(1+(d/z)^2);-z*(1+(d/z)^2);-z*(1+(d/z)^2)]
end

if get(handles.popupmenu2,'value')==1
    A(1:6,2)=[0;b;0;b;0;b]
    A(1:6,3)=[b;0;b;0;b;0]
elseif get(handles.popupmenu2,'value')==2
    A(1:6,2)=[0;b;0;b;0;b]
    A(1:6,3)=[1;1;1;1;1;1]
elseif get(handles.popupmenu2,'value')==3
    A(1:6,2)=[0;b;0;b;0;b];
    A(1:6,3)=[-1;-1;-1;-1;-1;-1]
elseif get(handles.popupmenu2,'value')==4
    A(1:6,2)=[b;0;b;0;b;0]
    A(1:6,3)=[1;1;1;1;1;1]
else
    A(1:6,2)=[b;0;b;0;b;0]
    A(1:6,3)=[-1;-1;-1;-1;-1;-1]
end

if get(handles.popupmenu3,'value')==1
    A(1:6,4)=[0;0;0;-b*d/z;0;b*d/z]
    A(1:6,5)=[0;0;-b*d/z;0;b*d/z;0]
elseif get(handles.popupmenu3,'value')==2
    A(1:6,4)=[0;0;0;-b*d/z;0;b*d/z]
    A(1:6,5)=[0;0;d/z;d/z;-d/z;-d/z]
elseif get(handles.popupmenu3,'value')==3
    A(1:6,4)=[0;0;0;-b*d/z;0;b*d/z]
    A(1:6,5)=[0;0;-d/z;-d/z;d/z;d/z]
elseif get(handles.popupmenu3,'value')==4
    A(1:6,4)=[0;0;-b*d/z;0;b*d/z;0]
    A(1:6,5)=[0;0;d/z;d/z;-d/z;-d/z]
else
    A(1:6,4)=[0;0;-b*d/z;0;b*d/z;0]
    A(1:6,5)=[0;0;-d/z;-d/z;d/z;d/z]
end
py1=str2num(get(handles.py1,'string'))/1000;
py2=str2num(get(handles.py2,'string'))/1000;
py3=str2num(get(handles.py3,'string'))/1000;
py4=str2num(get(handles.py4,'string'))/1000;
py5=str2num(get(handles.py5,'string'))/1000;
py6=str2num(get(handles.py6,'string'))/1000;
L=[py1;py2;py3;py4;py5;py6]
X=inv((A'*A))*A'*L

if get(handles.popupmenu1,'value')==1
   set(handles.domegaprim,'string',num2str(X(1,1)*180/pi))
else
   set(handles.domegazegond,'string',num2str(X(1,1)*180/pi))
end

if get(handles.popupmenu2,'value')==1
   set(handles.dkapaprim,'string',num2str(X(2,1)*180/pi))
   set(handles.dkapazegond,'string',num2str(X(3,1)*180/pi))
elseif get(handles.popupmenu2,'value')==2
   set(handles.dkapaprim,'string',num2str(X(2,1)*180/pi))
   set(handles.byprim,'string',num2str(X(3,1)*1000))
elseif get(handles.popupmenu2,'value')==3
   set(handles.dkapaprim,'string',num2str(X(2,1)*180/pi))
   set(handles.byzegond,'string',num2str(X(3,1)*1000))
elseif get(handles.popupmenu2,'value')==4
   set(handles.dkapazegond,'string',num2str(X(2,1)*180/pi))
   set(handles.byprim,'string',num2str(X(3,1)*1000))
else
   set(handles.dkapazegond,'string',num2str(X(2,1)*180/pi))
   set(handles.byzegond,'string',num2str(X(3,1)*1000))
end

if get(handles.popupmenu3,'value')==1
   set(handles.dfiprim,'string',num2str(X(4,1)*180/pi))
   set(handles.dfizegond,'string',num2str(X(5,1)*180/pi))
elseif get(handles.popupmenu3,'value')==2
   set(handles.dfiprim,'string',num2str(X(4,1)*180/pi))
   set(handles.bzprim,'string',num2str(X(5,1)*1000))
elseif get(handles.popupmenu3,'value')==3
   set(handles.dfiprim,'string',num2str(X(4,1)*180/pi))
   set(handles.bzzegond,'string',num2str(X(5,1)*1000))
elseif get(handles.popupmenu3,'value')==4
   set(handles.dfizegond,'string',num2str(X(4,1)*180/pi))
   set(handles.bzprim,'string',num2str(X(5,1)*1000))
else
   set(handles.dfizegond,'string',num2str(X(4,1)*180/pi))
   set(handles.bzzegond,'string',num2str(X(5,1)*1000))
end
