function tableOut = p_test( tableIn )
% Takes an table containing and input column vector named ElapsedTime
% of type cell with contents in BioRadio elapsed time format and converts
% to type double containing a running count of the elapsed milliseconds.
% 
%
% Example call: t = convertElapsedTimeTable(S1_VR5H);
tableOut = tableIn; % There must be a more efficient way to do this...
Seconds = zeros(size(tableIn,1),1); % make a vector
for i = 1:size(tableIn.RealTime,1)
    temp = tableIn.RealTime(i);
    temp2 = str2double(regexp(temp{1},':','split'));
    disp(temp2);
    %sec = temp2*[(60*60);60;1];
    %Seconds(i) = sec;
end
%direct assignment gets Conversion to cell from double error
tableOut.RealTime= Seconds;