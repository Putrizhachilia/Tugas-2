function varargout = putrizhalchilias(varargin)
% PUTRIZHALCHILIAS MATLAB code for putrizhalchilias.fig
%      PUTRIZHALCHILIAS, by itself, creates a new PUTRIZHALCHILIAS or raises the existing
%      singleton*.
%
%      H = PUTRIZHALCHILIAS returns the handle to a new PUTRIZHALCHILIAS or the handle to
%      the existing singleton*.
%
%      PUTRIZHALCHILIAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUTRIZHALCHILIAS.M with the given input arguments.
%
%      PUTRIZHALCHILIAS('Property','Value',...) creates a new PUTRIZHALCHILIAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before putrizhalchilias_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to putrizhalchilias_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help putrizhalchilias

% Last Modified by GUIDE v2.5 03-Sep-2021 22:48:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @putrizhalchilias_OpeningFcn, ...
                   'gui_OutputFcn',  @putrizhalchilias_OutputFcn, ...
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


% --- Executes just before putrizhalchilias is made visible.
function putrizhalchilias_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to putrizhalchilias (see VARARGIN)

% Choose default command line output for putrizhalchilias
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes putrizhalchilias wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = putrizhalchilias_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tmblbukagambar.
function tmblbukagambar_Callback(hObject, eventdata, handles)
% hObject    handle to tmblbukagambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Buka Gambar
axes(handles.axes1)
a = imread('putri.jpg');
imshow(a)


% --- Executes on button press in tmblkeabuan.
function tmblkeabuan_Callback(hObject, eventdata, handles)
% hObject    handle to tmblkeabuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Citra Keabuan
a = imread('putri.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
axes(handles.axes2)
imshow(I_greyKom)

% --- Executes on button press in tmblBiner.
function tmblBiner_Callback(hObject, eventdata, handles)
% hObject    handle to tmblBiner (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Biner
a = imread('putri.jpg');
I_bw = im2bw(a,0.5);
axes(handles.axes3)
imshow(I_bw)

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Brightness
a = imread('putri.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tBrig = 150;
I_brig = I_greyKom+tBrig;
axes(handles.axes4)
imshow(I_brig)

% --- Executes on button press in tmblContrass.
function tmblContrass_Callback(hObject, eventdata, handles)
% hObject    handle to tmblContrass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Contrass
a = imread('putri.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tCon = 75;
I_con = I_greyKom + tCon;
axes(handles.axes5)
imshow(I_con)

% --- Executes on button press in tmblKeluar.
function tmblKeluar_Callback(hObject, eventdata, handles)
% hObject    handle to tmblKeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%keluar
delete(handles.figure1)
