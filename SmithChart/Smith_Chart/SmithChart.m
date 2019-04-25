
function varargout = SmithChart(varargin)
% SMITHCHART MATLAB code for SmithChart.fig
%      SMITHCHART, by itself, creates a new SMITHCHART or raises the existing
%      singleton*.
%
%      H = SMITHCHART returns the handle to a new SMITHCHART or the handle to
%      the existing singleton*.
%
%      SMITHCHART('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMITHCHART.M with the given input arguments.
%
%      SMITHCHART('Property','Value',...) creates a new SMITHCHART or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SmithChart_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SmithChart_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SmithChart

% Last Modified by GUIDE v2.5 24-Apr-2019 16:56:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SmithChart_OpeningFcn, ...
                   'gui_OutputFcn',  @SmithChart_OutputFcn, ...
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


% --- Executes just before SmithChart is made visible.
function SmithChart_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SmithChart (see VARARGIN)
% ==========================SmithChart_Initialization======================
handles = Initialization(handles);


% =========================================================================

% Choose default command line output for SmithChart
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SmithChart wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SmithChart_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Rezl_Callback(hObject, eventdata, handles)
% hObject    handle to Rezl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Re_zl
Re_zl = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of Rezl as text
%        str2double(get(hObject,'String')) returns contents of Rezl as a double


% --- Executes during object creation, after setting all properties.
function Rezl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rezl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Imzl_Callback(hObject, eventdata, handles)
% hObject    handle to imzl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Im_zl
Im_zl = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of imzl as text
%        str2double(get(hObject,'String')) returns contents of imzl as a double


% --- Executes during object creation, after setting all properties.
function Imzl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imzl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ReZ0_Callback(hObject, eventdata, handles)
% hObject    handle to ReZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Re_Z0
Re_Z0 = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of ReZ0 as text
%        str2double(get(hObject,'String')) returns contents of ReZ0 as a double


% --- Executes during object creation, after setting all properties.
function ReZ0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ReZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ImZ0_Callback(hObject, eventdata, handles)
% hObject    handle to ImZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Im_Z0
Im_Z0 = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of ImZ0 as text
%        str2double(get(hObject,'String')) returns contents of ImZ0 as a double


% --- Executes during object creation, after setting all properties.
function ImZ0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ImZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ReZL_Callback(hObject, eventdata, handles)
% hObject    handle to rezl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Re_ZL
Re_ZL = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of rezl as text
%        str2double(get(hObject,'String')) returns contents of rezl as a double


% --- Executes during object creation, after setting all properties.
function ReZL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rezl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ImZL_Callback(hObject, eventdata, handles)
% hObject    handle to imzl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Im_ZL
Im_ZL = str2double(get(hObject,'String'));
set(hObject, 'Enable', 'inactive');
% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of imzl as text
%        str2double(get(hObject,'String')) returns contents of imzl as a double


% --- Executes during object creation, after setting all properties.
function ImZL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imzl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in START.
function START_Callback(hObject, eventdata, handles)
% hObject    handle to START (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Im_Z0 Im_ZL Im_zl Re_Z0 Re_ZL Re_zl
global acc
Re_ZL = str2double(get(handles.ReZL, 'String'));
Im_ZL = str2double(get(handles.ImZL, 'String'));
Re_Z0 = str2double(get(handles.ReZ0, 'String'));
Im_Z0 = str2double(get(handles.ImZ0, 'String'));
Re_zl = str2double(get(handles.Rezl, 'String'));
Im_zl = str2double(get(handles.Imzl, 'String'));
% ------------------º∆À„≤¢œ‘ æπÈ“ªªØ◊Ëøπ----------------------
if get(handles.Cal_ZLZ0, 'Value') == 1
    handles = solve_nzl(handles);
end
% -----------------------------------------------------------
if (get(handles.Cal_ZLZ0, 'Value') == 1) && ...
    (~isnan(Re_ZL) && ~isnan(Im_ZL) && ~isnan(Re_Z0) && ~isnan(Im_Z0))
    % …æ≥˝…œ¥ŒªÊÕº
    delete(handles.R_circle);
    delete(handles.X_circle);
    delete(handles.Gamma_circle);
    delete(handles.Point);
    delete(handles.PLine);
    %ªÊÕº
    handles = R_plot(handles);
    handles = X_plot(handles);
    handles = Gamma_plot(handles);

elseif ~isnan(Re_zl) && ~isnan(Im_zl)
    set(handles.ReZL, 'String', '');
    set(handles.ReZ0, 'String', '');
    set(handles.ImZL, 'String', '');
    set(handles.ImZ0, 'String', '');
    % …æ≥˝…œ¥ŒªÊÕº
    delete(handles.R_circle);
    delete(handles.X_circle);
    delete(handles.Gamma_circle);
    delete(handles.Point);
    delete(handles.PLine);
    %ªÊÕº
    handles = R_plot(handles);
    handles = X_plot(handles);
    handles = Gamma_plot(handles);
end

% -----------------------------’⁄±Œ∂‡”‡≤ø∑÷---------------------------------
for r = 1.005:0.004:1.5
    theta = linspace(0, 2*pi);
    x = r*cos(theta);
    y = r*sin(theta);
    line(x, y, 'color', 'w', 'LineWidth', 1);
    hold on;
end
% -------------------------------------------------------------------------
% ------------------ Delete DeltaPiont ---------------------
delete(handles.DeltaPoint_L);
delete(handles.DPLine_L);
set(handles.ToLoad, 'Value', 0);
delete(handles.DeltaPoint_G);
delete(handles.DPLine_G);
set(handles.ToGenerator, 'Value', 0);
% ---------------------------------------------------

% --------------------------------º∆À„OUTPUT-------------------------------
gamma_re = handles.Gamma_Re;
gamma_im = handles.Gamma_Im;
if ~isnan(gamma_re) && ~isnan(gamma_im)
    gamma_amplitude = sqrt(gamma_re^2 + gamma_im^2);
    if gamma_im<0
        f = '';
    else
        f = '+';
    end
    str_gamma = [num2str(gamma_re), f, num2str(gamma_im), 'j'];
    SWR = (1+gamma_amplitude)/(1-gamma_amplitude);
    dBS = 20 * log(SWR)/log(10);
    RTN_LOSS = -20 * log(gamma_amplitude)/log(10);
    set(handles.SWR, 'String', num2str(round(SWR, acc))); 
    set(handles.Gamma, 'String', str_gamma); 
    set(handles.GammaAmplitude, 'String', num2str(round(gamma_amplitude, acc))); 
    set(handles.dBS, 'String', [num2str(round(dBS, acc)), ' dB']); 
    set(handles.RTNLOSS, 'String', [num2str(round(RTN_LOSS, acc)), ' dB']); 
end
% -------------------------------------------------------------------------

% Update handles structure
guidata(hObject, handles);



function Delta_Callback(hObject, eventdata, handles)
% hObject    handle to Delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delta_l = str2double(get(hObject,'String'));
handles.Delta_L = delta_l;

% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of Delta as text
%        str2double(get(hObject,'String')) returns contents of Delta as a double


% --- Executes during object creation, after setting all properties.
function Delta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ToGenerator.
function ToGenerator_Callback(hObject, eventdata, handles)
% hObject    handle to ToGenerator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tg = get(hObject,'Value');
if tg == 1
    handles.TG = 1;
    if ~isnan(handles.Delta_L)
        delete(handles.DeltaPoint_G);
        delete(handles.DPLine_G);
        handles = DeltaPoint_PLot(handles);
    end
    handles.TG = 0;
else
    delete(handles.DeltaPoint_G);     % …æ≥˝…œ¥ŒªÊÕº
    delete(handles.DPLine_G);
    set(handles.GammaToG, 'String', '');
end
% Update handles structure
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of ToGenerator


% --- Executes on button press in ToLoad.
function ToLoad_Callback(hObject, eventdata, handles)
% hObject    handle to ToLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tl = get(hObject,'Value');
if tl == 1
    handles.TL = 1;
    if ~isnan(handles.Delta_L)
        delete(handles.DeltaPoint_L);
        delete(handles.DPLine_L);
        handles = DeltaPoint_PLot(handles);
    end
    handles.TL = 0;
else
    delete(handles.DeltaPoint_L);     % …æ≥˝…œ¥ŒªÊÕº
    delete(handles.DPLine_L);
    set(handles.GammaToL, 'String', '');
end
% Update handles structure
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of ToLoad


% --- Executes on button press in cl_all.
function cl_all_Callback(hObject, eventdata, handles)
% hObject    handle to cl_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = Initialization(handles);
set(handles.ReZL, 'String', '');
set(handles.ReZ0, 'String', '');
set(handles.Rezl, 'String', '');
set(handles.ImZL, 'String', '');
set(handles.ImZ0, 'String', '');
set(handles.Imzl, 'String', '');
set(handles.Delta, 'String', '');
set(handles.Gamma, 'String', '');
set(handles.GammaAmplitude, 'String', '');
set(handles.SWR, 'String', '');
set(handles.dBS, 'String', '');
set(handles.RTNLOSS, 'String', '');
set(handles.GammaToG, 'String', '');
set(handles.GammaToL, 'String', '');
% Update handles structure
guidata(hObject, handles);



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over ReZL.
function ReZL_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to ReZL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp('aaaaaaaaaaaaaaa')
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);
% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in Cal_ZLZ0.
function Cal_ZLZ0_Callback(hObject, eventdata, handles)
% hObject    handle to Cal_ZLZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flag = get(hObject,'Value');
if flag ==1
    set(handles.Cal_zl, 'Value', 0);
else
    set(handles.Cal_zl, 'Value', 1);
end

% Hint: get(hObject,'Value') returns toggle state of Cal_ZLZ0
% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in Cal_zl.
function Cal_zl_Callback(hObject, eventdata, handles)
% hObject    handle to Cal_zl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flag = get(hObject,'Value');
if flag ==1
    set(handles.Cal_ZLZ0, 'Value', 0);
else
    set(handles.Cal_ZLZ0, 'Value', 1);
end

% Hint: get(hObject,'Value') returns toggle state of Cal_zl
% Update handles structure
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over ImZL.
function ImZL_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to ImZL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);
% Update handles structure
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over ReZ0.
function ReZ0_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to ReZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% Update handles structure
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over ImZ0.
function ImZ0_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to ImZ0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% Update handles structure
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Rezl.
function Rezl_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Rezl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% Update handles structure
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Imzl.
function Imzl_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Imzl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '', 'Enable', 'on');
uicontrol(hObject);

% Update handles structure
guidata(hObject, handles);
