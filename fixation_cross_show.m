function fixation_cross_show(wPtr,h)

interstimulus_intervals  = zeros(3,1);
interstimulus_intervals(1,1) = 0.5;
interstimulus_intervals(2,1) = 0.7;
interstimulus_intervals(3,1) = 0.8;
selected_intervals = randsample(interstimulus_intervals,1);

Screen('TextFont',wPtr, 'Arial');
Screen('TextStyle',wPtr, 0);
Screen('TextSize',wPtr, 30);
[nx, ny, bbox] = DrawFormattedText(wPtr, '+', 'center', 48*h/100, 0);
Screen('Flip',wPtr);
WaitSecs(selected_intervals);

end