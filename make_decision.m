function [pre_RT] = make_decision (wPtr, h, odd_or_even, exp_type, start_time, left_key, right_key, central_letter)

pre_RT = cell(1,3);
while GetSecs - start_time < 1
    [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
    
    if odd_or_even == 1
        if keyCode(left_key) && central_letter == 'H'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'K'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'S'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'C'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'H'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'right_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'K'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'right_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'S'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'right_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'C'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'right_key';
            break;
        end
    end
    
  
    if odd_or_even == 0
        if keyCode(left_key) && central_letter == 'H'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'K'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'S'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(left_key) && central_letter == 'C'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'H'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'right_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'K'
            pre_RT{1,1} = GetSecs - start_time;
            pre_RT{1,2} = 'Correct';
            pre_RT{1,3} = 'right_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'S'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
        if keyCode(right_key) && central_letter == 'C'
            pre_RT{1,1} = GetSecs - start_time;
            if exp_type == 1
                show_error(wPtr, h)
            end
            pre_RT{1,2} = 'Error';
            pre_RT{1,3} = 'left_key';
            break;
        end
    end
end
if ~keyCode(right_key) && ~keyCode(left_key)
    pre_RT{1,1} = 'N/A';
    pre_RT{1,2} = 'N/A';
    pre_RT{1,3} = 'N/A';
end
end