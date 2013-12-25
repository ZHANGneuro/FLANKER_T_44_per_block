function show_error(wPtr, h)
            Screen('TextFont',wPtr, 'Arial');
            Screen('TextStyle',wPtr, 0);
            Screen('TextSize',wPtr, 27);
            [nx, ny, bbox] = DrawFormattedText(wPtr, 'ERROR', 'center', 54*h/100, [255 0 0]);
end