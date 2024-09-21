a = audiorecorder(44100, 16, 2);  % Create an audio recorder object
disp('Recording...');
pause(2);
% 5-second countdown before recording
for i = 5:-1:1
    clc;                          % Clear the screen
    disp(['Recording will start in ', num2str(i), ' seconds...']);
    pause(1);                     % Wait for 1 second
end

clc;                              % Clear the screen again before recording
disp('Recording...');
pause(2);                         % Wait for 2 seconds

recordblocking(a, 5);             % Record audio for 5 seconds
pause(2);                         % Wait for 2 seconds
disp('End of recording.');                        % Wait for 2 seconds

disp('Enter any letter for playing the audio');
                        % Wait for 2 seconds
input('', 's');                   % Wait for the user to enter any letter

audioData = getaudiodata(a);      % Extract the recorded audio data
                         % Wait for 2 seconds
sound(audioData, 44100);          % Play the audio with the correct sample rate
