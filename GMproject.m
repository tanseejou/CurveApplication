function varargout = GMproject(varargin)
% GMPROJECT MATLAB code for GMproject.fig
%      GMPROJECT, by itself, creates a new GMPROJECT or raises the existing
%      singleton*.
%
%      H = GMPROJECT returns the handle to a new GMPROJECT or the handle to
%      the existing singleton*.
%
%      GMPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GMPROJECT.M with the given input arguments.
%
%      GMPROJECT('Property','Value',...) creates a new GMPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GMproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GMproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GMproject

% Last Modified by GUIDE v2.5 30-Dec-2019 17:54:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GMproject_OpeningFcn, ...
                   'gui_OutputFcn',  @GMproject_OutputFcn, ...
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


% --- Executes just before GMproject is made visible.
function GMproject_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GMproject (see VARARGIN)

% Choose default command line output for GMproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GMproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GMproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in default3dCurve.
function default3dCurve_Callback(hObject, eventdata, handles)
% hObject    handle to default3dCurve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
axes(handles.axes1);
rmappdata(GMproject,'P');
rmappdata(GMproject,'cp');

function CurveCP_X_Callback(hObject, eventdata, handles)

function CurveCP_X_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function CurveCP_Y_Callback(hObject, eventdata, handles)

function CurveCP_Y_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function CurveCP_Z_Callback(hObject, eventdata, handles)

function CurveCP_Z_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in addCP.
function addCP_Callback(hObject, eventdata, handles)

cpx = str2double(get(handles.CurveCP_X, 'String'));
cpy = str2double(get(handles.CurveCP_Y, 'String'));
cpz = str2double(get(handles.CurveCP_Z, 'String'));
cla reset;
axes(handles.axes1);
P = getappdata(GMproject,'P');
P = [P [cpx;cpy;cpz]];
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);


function SurfaceCP_1X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_1X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_1X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_1X as a double


% --- Executes during object creation, after setting all properties.
function SurfaceCP_1X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_1X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SurfaceCP_1Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_1Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_1Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_1Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_1Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_1Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_1Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_1Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_1Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_1Z as a double


% --- Executes during object creation, after setting all properties.
function SurfaceCP_1Z_CreateFcn(hObject, ~, handles)
% hObject    handle to SurfaceCP_1Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_2X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_2X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_2X as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_2X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_2Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_2Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_2Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_2Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_2Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_2Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_2Z as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_2Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_2Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_3X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_3X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_3X as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_3X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_3Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_3Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_3Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_3Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_3Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_3Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_3Z as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_3Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_3Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_4X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_4X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_4X as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_4X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_4Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_4Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_4Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_4Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_4Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_4Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_4Z as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_4Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_4Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_5X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_5X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_5X as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_5X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_5Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_5Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_5Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_5Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_5Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_5Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_5Z as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_5Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_5Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_6X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_6X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_6X as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_6X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_6Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_6Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_6Y as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_6Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_6Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_6Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_6Z as a double

% --- Executes during object creation, after setting all properties.
function SurfaceCP_6Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_6Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function SurfaceCP_7X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_7X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_7X as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_7X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_7Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_7Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_7Y as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_7Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_7Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_7Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_7Z as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_7Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_7Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function SurfaceCP_8X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_8X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_8X as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_8X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_8Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_8Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_8Y as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_8Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_8Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_8Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_8Z as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_8Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_8Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function SurfaceCP_9X_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_9X as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_9X as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_9X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_9Y_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_9Y as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_9Y as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_9Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SurfaceCP_9Z_Callback(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfaceCP_9Z as text
%        str2double(get(hObject,'String')) returns contents of SurfaceCP_9Z as a double
% --- Executes during object creation, after setting all properties.
function SurfaceCP_9Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfaceCP_9Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in drawBezierCurve.
function drawBezierCurve_Callback(hObject, eventdata, handles)
% hObject    handle to drawBezierCurve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

scp1x = str2double(get(handles.SurfaceCP_1X, 'String'));
scp1y = str2double(get(handles.SurfaceCP_1Y, 'String'));
scp1z = str2double(get(handles.SurfaceCP_1Z, 'String'));

scp2x = str2double(get(handles.SurfaceCP_2X, 'String'));
scp2y = str2double(get(handles.SurfaceCP_2Y, 'String'));
scp2z = str2double(get(handles.SurfaceCP_2Z, 'String'));

scp3x = str2double(get(handles.SurfaceCP_3X, 'String'));
scp3y = str2double(get(handles.SurfaceCP_3Y, 'String'));
scp3z = str2double(get(handles.SurfaceCP_3Z, 'String'));

scp4x = str2double(get(handles.SurfaceCP_4X, 'String'));
scp4y = str2double(get(handles.SurfaceCP_4Y, 'String'));
scp4z = str2double(get(handles.SurfaceCP_4Z, 'String'));

scp5x = str2double(get(handles.SurfaceCP_5X, 'String'));
scp5y = str2double(get(handles.SurfaceCP_5Y, 'String'));
scp5z = str2double(get(handles.SurfaceCP_5Z, 'String'));

scp6x = str2double(get(handles.SurfaceCP_6X, 'String'));
scp6y = str2double(get(handles.SurfaceCP_6Y, 'String'));
scp6z = str2double(get(handles.SurfaceCP_6Z, 'String'));

scp7x = str2double(get(handles.SurfaceCP_7X, 'String'));
scp7y = str2double(get(handles.SurfaceCP_7Y, 'String'));
scp7z = str2double(get(handles.SurfaceCP_7Z, 'String'));

scp8x = str2double(get(handles.SurfaceCP_8X, 'String'));
scp8y = str2double(get(handles.SurfaceCP_8Y, 'String'));
scp8z = str2double(get(handles.SurfaceCP_8Z, 'String'));

scp9x = str2double(get(handles.SurfaceCP_9X, 'String'));
scp9y = str2double(get(handles.SurfaceCP_9Y, 'String'));
scp9z = str2double(get(handles.SurfaceCP_9Z, 'String'));

cp=cell(3,3);

cp{1,1} = [scp1x, scp1y, scp1z];
cp{1,2} = [scp2x, scp2y, scp2z];
cp{1,3} = [scp3x, scp3y, scp3z];
cp{2,1} = [scp4x, scp4y, scp4z];
cp{2,2} = [scp5x, scp5y, scp5z];
cp{2,3} = [scp6x, scp6y, scp6z];
cp{3,1} = [scp7x, scp7y, scp7z];
cp{3,2} = [scp8x, scp8y, scp8z];
cp{3,3} = [scp9x, scp9y, scp9z];
setappdata(GMproject,'cpsurf',cp);

axes(handles.axes1);
%C = [c11;c12;c13;c21;c22;c23];
Bezier3DSurface(cp);


% --- Executes on button press in SpringColor.
function SpringColor_Callback(hObject, eventdata, handles)
% hObject    handle to SpringColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,spring)
shading interp
lighting phong
light
material shiny


% --- Executes on button press in SummerColor.
function SummerColor_Callback(hObject, eventdata, handles)
% hObject    handle to SummerColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,summer)
shading interp
lighting phong
light
material shiny

% --- Executes on button press in AutumnColor.
function AutumnColor_Callback(hObject, eventdata, handles)
% hObject    handle to AutumnColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,autumn)
shading interp
lighting phong
light
material shiny

% --- Executes on button press in WinterColor.
function WinterColor_Callback(hObject, eventdata, handles)
% hObject    handle to WinterColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,winter)
shading interp
lighting phong
light
material shiny


% --- Executes on button press in hsvColor.
function hsvColor_Callback(hObject, eventdata, handles)
% hObject    handle to hsvColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,hsv)
shading interp
lighting phong
light
material shiny

% --- Executes on button press in parulaColor.
function parulaColor_Callback(hObject, eventdata, handles)
% hObject    handle to parulaColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,parula)
shading interp
lighting phong
light
material shiny

% --- Executes on button press in copperColor.
function copperColor_Callback(hObject, eventdata, handles)
% hObject    handle to copperColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,copper)
shading interp
lighting phong
light
material shiny

% --- Executes on button press in prismColor.
function prismColor_Callback(hObject, eventdata, handles)
% hObject    handle to prismColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
colormap(handles.axes1,prism)
shading interp
lighting phong
light
material shiny


% --- Executes on button press in YplusSurf.
function YplusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to YplusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(2) = cp{cpNo1,cpNo2}(2) + changeValue;
setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);

% --- Executes on button press in YminusSurf.
function YminusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to YminusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(2) = cp{cpNo1,cpNo2}(2) - changeValue;

setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);


function SurfCP_No1_Callback(hObject, eventdata, handles)
% hObject    handle to SurfCP_No1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfCP_No1 as text
%        str2double(get(hObject,'String')) returns contents of SurfCP_No1 as a double


% --- Executes during object creation, after setting all properties.
function SurfCP_No1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfCP_No1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SurfChangeValue_Callback(hObject, eventdata, handles)
% hObject    handle to SurfChangeValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SurfChangeValue as text
%        str2double(get(hObject,'String')) returns contents of SurfChangeValue as a double


% --- Executes during object creation, after setting all properties.
function SurfChangeValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SurfChangeValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function SurfCP_No2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function SurfCP_No2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ZplusSurf.
function ZplusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to ZplusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(3) = cp{cpNo1,cpNo2}(3) + changeValue;

setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);

% --- Executes on button press in ZminusSurf.
function ZminusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to ZminusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(3) = cp{cpNo1,cpNo2}(3) - changeValue;

setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);

% --- Executes on button press in XminusSurf.
function XminusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to XminusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(1) = cp{cpNo1,cpNo2}(1) - changeValue;

setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);

% --- Executes on button press in XplusSurf.
function XplusSurf_Callback(hObject, eventdata, handles)
% hObject    handle to XplusSurf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo1 = str2double(get(handles.SurfCP_No1, 'String'));
cpNo2 = str2double(get(handles.SurfCP_No2, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));
cp = getappdata(GMproject,'cpsurf');

cp{cpNo1,cpNo2}(1) = cp{cpNo1,cpNo2}(1) + changeValue;

setappdata(GMproject,'cpsurf',cp);
axes(handles.axes1);
Bezier3DSurface(cp);



function curveCPNo_Callback(hObject, eventdata, handles)
% hObject    handle to curveCPNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of curveCPNo as text
%        str2double(get(hObject,'String')) returns contents of curveCPNo as a double


% --- Executes during object creation, after setting all properties.
function curveCPNo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to curveCPNo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in curveYplus.
function curveYplus_Callback(hObject, eventdata, handles)
% hObject    handle to curveYplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(2,cpNo) = P(2,cpNo) + changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);


% --- Executes on button press in curveYminus.
function curveYminus_Callback(hObject, eventdata, handles)
% hObject    handle to curveYminus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(2,cpNo) = P(2,cpNo) - changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);

% --- Executes on button press in curveZplus.
function curveZplus_Callback(hObject, eventdata, handles)
% hObject    handle to curveZplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(3,cpNo) = P(3,cpNo) + changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);

% --- Executes on button press in curveZminus.
function curveZminus_Callback(hObject, eventdata, handles)
% hObject    handle to curveZminus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(3,cpNo) = P(3,cpNo) - changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);

% --- Executes on button press in curveXminus.
function curveXminus_Callback(hObject, eventdata, handles)
% hObject    handle to curveXminus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(1,cpNo) = P(1,cpNo) - changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);

% --- Executes on button press in curveXplus.
function curveXplus_Callback(hObject, eventdata, handles)
% hObject    handle to curveXplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cpNo = str2double(get(handles.curveCPNo, 'String'));
changeValue = str2double(get(handles.SurfChangeValue, 'String'));

P = getappdata(GMproject,'P');
P(1,cpNo) = P(1,cpNo) + changeValue;
defaultBezier3dCurve(P);
setappdata(GMproject,'P',P);
