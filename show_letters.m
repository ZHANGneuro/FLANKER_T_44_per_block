function [start_time] = show_letters(wPtr,h,selected_letter)

Screen('TextFont',wPtr, 'Times New Roman');
Screen('TextStyle',wPtr, 0);
Screen('TextSize',wPtr, 30);
[nx, ny, bbox] = DrawFormattedText(wPtr, selected_letter, 'center', 42*h/100, 0);
Screen('TextFont',wPtr, 'Arial');
Screen('TextStyle',wPtr, 0);
Screen('TextSize',wPtr, 30);
[nx, ny, bbox] = DrawFormattedText(wPtr, '+', 'center', 48*h/100, 0);
start_time = Screen('Flip',wPtr);
end