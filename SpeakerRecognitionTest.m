%% VOICE recognition %%
%  -----------------------------------------------------

%  Follwing code reads two voice record and find the
%  similarity between them. Here I have used MFCC( Mel
%  frequency cepstral coefficients ) and
%  DTW (Dynamic Time Warping) functions to compute the
%  similarity between two signals.
%  -----------------------------------------------------

function varargout = SpeakerRecognitionTest(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SpeakerRecognitionTest_OpeningFcn, ...
                   'gui_OutputFcn',  @SpeakerRecognitionTest_OutputFcn, ...
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

function SpeakerRecognitionTest_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);


function varargout = SpeakerRecognitionTest_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function signin_Callback(hObject, eventdata, handles)

run databaseRecorder
run SpeakerRecognitionTest


function login_Callback(hObject, eventdata, handles)

run SpeakerRecognition
run SpeakerRecognitionTest




function exit_Callback(hObject, eventdata, handles)

clc
clear all
close all
