function varargout = step_response_n2sys(varargin)
% STEP_RESPONSE_N2SYS MATLAB code for step_response_n2sys.fig
%      STEP_RESPONSE_N2SYS, by itself, creates a new STEP_RESPONSE_N2SYS or raises the existing
%      singleton*.
%
%      H = STEP_RESPONSE_N2SYS returns the handle to a new STEP_RESPONSE_N2SYS or the handle to
%      the existing singleton*.
%
%      STEP_RESPONSE_N2SYS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STEP_RESPONSE_N2SYS.M with the given input arguments.
%
%      STEP_RESPONSE_N2SYS('Property','Value',...) creates a new STEP_RESPONSE_N2SYS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before step_response_n2sys_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to step_response_n2sys_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help step_response_n2sys

% Last Modified by GUIDE v2.5 22-Apr-2019 14:53:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @step_response_n2sys_OpeningFcn, ...
                   'gui_OutputFcn',  @step_response_n2sys_OutputFcn, ...
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


% --- Executes just before step_response_n2sys is made visible.
function step_response_n2sys_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to step_response_n2sys (see VARARGIN)

%U_Start ------------------------------------------------------------------
zeta = 0.3;
set(handles.edit1, 'String', num2str(zeta));
set(handles.slider1, 'Value', zeta);
set(handles.gridon, 'Value', 0);
set(handles.gridoff, 'Value', 1);
set(handles.listbox1, 'Value', 1);
handles.t = 0:0.05:15;
handles.Color = 'Red';
handles.zeta = zeta;
handles.flag = 0;
handles = surfplot(handles);
handles.flag = 1;
handles.Color = 'Blue';
%U_End --------------------------------------------------------------------

% Choose default command line output for step_response_n2sys
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes step_response_n2sys wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = step_response_n2sys_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sz = get(hObject, 'String');            %从可编辑文本框读取输入字符
zeta = str2double(sz);                  
set(handles.slider1, 'Value', zeta);    %对滑块的游标定位
handles.zeta = zeta;                    %“GUI数据”形式，保存数据以便共享
handles = surfplot(handles);            %调用绘图子函数
guidata(hObject, handles);              %保存更新了的handles数据
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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zeta = get(hObject, 'Value');
set(handles.edit1, 'String', num2str(zeta));
handles.zeta = zeta;
handles = surfplot(handles);
guidata(hObject, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in gridon.
function gridon_Callback(hObject, eventdata, handles)
% hObject    handle to gridon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.gridoff, 'Value', 0);
grid on;
% Hint: get(hObject,'Value') returns toggle state of gridon


% --- Executes on button press in gridoff.
function gridoff_Callback(hObject, eventdata, handles)
% hObject    handle to gridoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.gridon, 'Value', 0);
grid off;
% Hint: get(hObject,'Value') returns toggle state of gridoff


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
listindex = get(hObject, 'Value');  %获取列表框所用选项的序号
if any(listindex == 1)
    set(handles.listbox1, 'Value', 1);
end
handles.flag = 0;
handles = surfplot(handles);
handles.flag = 1;
guidata(hObject, handles);
% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
