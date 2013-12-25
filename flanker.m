% Note When you run this script a subject_ID must be given, this is due to that Response Keys are counterbalanced by Subject Number, e.g. flanker(1), flanker(2).....
% 
% This script implements the Flanker Task described in:
% Eriksen, B.A. & Eriksen, C.W (1974) Effects of noise letters upon the identification of a target letter in a nonsearch task. Perception & Psychophysics, 16, 143-149.
% 
% There are also few modifications that have been made to this script:
% 1. Applying Times New Roman font rather than Paratype fonts applied in Eriksen & Eriksen (1974).
% 2. Every inter-stimulus interval is randomly picked from an array (500, 700, 800 ms). 
% 
% Those changes are from the application described in:
% Rowe, G., Hirsh, J. B., & Anderson, A. K. (2007). Positive affect increases the breadth of attentional selection. Proceedings of the National Academy of Sciences, 104(1), 383-388.
% 
% !!!Very important note - This script is a simplified version of Flanker task!!!
% 
% In Eriksen & Eriksen (1974):
% the trial is equipped with 6 sessions, each session contains 3 Blocks and 1 Blocked-Non-Noise-control (12 single letter), each Block consists of 28 Noise-letter-conbinations and 1 Mixed-Non-Noise-control (4 single letters H K S C).
% 
% That is, the whole trial has 6 * ( 3 * (28+4) + 12 ) = 648 stimuli
% 
% In this script:
% it runs 1 session, which contains 1 Block and 1 Blocked-Non-Noise-control, the Block contains 28 Noise-letter-conbinations and 1 Mixed-Non-Noise-control (4 single letters H K S C).
% 
% That is, the whole trial has (28+4) + 12 = 44 stimuli (the other 44 stimuli for practice).
% 
% This made the RT result very limited for analysis, as 44 stimuli cannot cover all potential letter-combination conditions, but it is fine for knowing Flanker task and appropriate for the use of presentation.
% 
% In generated result, "Combination_of_conditions"  is represented by numbers, e.g. "11" means "letter-combination-condition1 + spacing condition1".
% User is not able to quit the progarm during it running, program can be quit by pressing 'ESC' in the end of task.
% 
% Bo 23rd December 2013 - bozhang.neuro@gmail.com



function flanker(Subject_ID)

odd_or_even = mod(Subject_ID,2);
Screen('Preference', 'SkipSyncTests', 1); % skip sync-tests for retina display
[wPtr,wRect] = Screen('OpenWindow', 0);
w = wRect(RectRight);
h = wRect(RectBottom);
KbName('UnifyKeyNames');
HideCursor(0);
spacekey = KbName('SPACE');
left_key = KbName('Q');
right_key = KbName('P');
quitkey = KbName('escape');
if odd_or_even == 1
    img = imread('./image/odd s for instruct_begin.png');
end
if odd_or_even == 0
    img = imread('./image/even s for instruct_begin.png');
end
[y, x, depth] = size(img);
x = x/1.5;
y = y/1.5;
t1 = Screen('MakeTexture', wPtr, img);
Screen('DrawTexture', wPtr, t1, [],  [(w-x)/2 (h-y)/2 (w-x)/2+x (h-y)/2+y]);
Screen('Flip',wPtr);
WaitSecs(1);

for exp_type = 1:2
    if exp_type == 1
        while 1
            [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
            if keyCode(spacekey)
                if exp_type == 1
                    if odd_or_even == 1
                        img = imread('./image/odd s for instruct_practice.png');
                    end
                    if odd_or_even == 0
                        img = imread('./image/even s for instruct_practice.png');
                    end
                end
                [y, x, depth] = size(img);
                x = x/1.5;
                y = y/1.5;
                t1 = Screen('MakeTexture', wPtr, img);
                Screen('DrawTexture', wPtr, t1, [],  [(w-x)/2 (h-y)/2 (w-x)/2+x (h-y)/2+y]);
                Screen('Flip',wPtr);
                WaitSecs(1);
                [secs, keyCode2, deltaSecs] = KbWait;
                if keyCode2(spacekey)
                    break;
                end
            end
        end
    end
    if exp_type == 2
        if odd_or_even == 1
            img = imread('./image/odd s for real test.png');
        end
        if odd_or_even == 0
            img = imread('./image/even s for real test.png');
        end
        [y, x, depth] = size(img);
        x = x/1.5;
        y = y/1.5;
        t1 = Screen('MakeTexture', wPtr, img);
        Screen('DrawTexture', wPtr, t1, [],  [(w-x)/2 (h-y)/2 (w-x)/2+x (h-y)/2+y]);
        Screen('Flip',wPtr);
        WaitSecs(1);
        while 1
            [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
            if keyCode(spacekey)
                break;
            end
        end
    end
    
    % ***************************************
    %    Defination of condition distribution
    % ***************************************
    spacing_cond1 = '';spacing_cond2 = '     ';spacing_cond3 = '          ';target_letter_H = 'H';target_letter_K = 'K';target_letter_S = 'S';target_letter_C = 'C';Opposite_letter_N = 'N';
    Opposite_letter_W = 'W';Opposite_letter_Z = 'Z';Opposite_letter_Q = 'Q';Opposite_letter_J = 'J';Opposite_letter_G = 'G';
    
    letter_combination_H = zeros(1,21);letter_combination_H(1,1) = 11;letter_combination_H(1,2) = 12;letter_combination_H(1,3) = 13; letter_combination_H(1,4) = 21;letter_combination_H(1,5) = 22;letter_combination_H(1,6) = 23;letter_combination_H(1,7) = 31;
    letter_combination_H(1,8) = 32;letter_combination_H(1,9) = 33;letter_combination_H(1,10) = 41;letter_combination_H(1,11) = 42;letter_combination_H(1,12) = 43;letter_combination_H(1,13) = 41;letter_combination_H(1,14) = 42;letter_combination_H(1,15) = 43;
    letter_combination_H(1,16) = 51;letter_combination_H(1,17) = 52;letter_combination_H(1,18) = 53;letter_combination_H(1,19) = 51;letter_combination_H(1,20) = 52;letter_combination_H(1,21) = 53;
    
    letter_combination_K = zeros(1,21);letter_combination_K(1,1) = 11;letter_combination_K(1,2) = 12;letter_combination_K(1,3) = 13; letter_combination_K(1,4) = 21;letter_combination_K(1,5) = 22;letter_combination_K(1,6) = 23;letter_combination_K(1,7) = 31;
    letter_combination_K(1,8) = 32;letter_combination_K(1,9) = 33;letter_combination_K(1,10) = 41;letter_combination_K(1,11) = 42;letter_combination_K(1,12) = 43;letter_combination_K(1,13) = 41;letter_combination_K(1,14) = 42;letter_combination_K(1,15) = 43;
    letter_combination_K(1,16) = 51;letter_combination_K(1,17) = 52;letter_combination_K(1,18) = 53;letter_combination_K(1,19) = 51;letter_combination_K(1,20) = 52;letter_combination_K(1,21) = 53;
    
    letter_combination_S = zeros(1,21);letter_combination_S(1,1) = 11;letter_combination_S(1,2) = 12;letter_combination_S(1,3) = 13; letter_combination_S(1,4) = 21;letter_combination_S(1,5) = 22;letter_combination_S(1,6) = 23;letter_combination_S(1,7) = 31;
    letter_combination_S(1,8) = 32;letter_combination_S(1,9) = 33;letter_combination_S(1,10) = 41;letter_combination_S(1,11) = 42;letter_combination_S(1,12) = 43;letter_combination_S(1,13) = 41;letter_combination_S(1,14) = 42;letter_combination_S(1,15) = 43;
    letter_combination_S(1,16) = 51;letter_combination_S(1,17) = 52;letter_combination_S(1,18) = 53;letter_combination_S(1,19) = 51;letter_combination_S(1,20) = 52;letter_combination_S(1,21) = 53;
    
    letter_combination_C = zeros(1,21);letter_combination_C(1,1) = 11;letter_combination_C(1,2) = 12;letter_combination_C(1,3) = 13; letter_combination_C(1,4) = 21;letter_combination_C(1,5) = 22;letter_combination_C(1,6) = 23;letter_combination_C(1,7) = 31;
    letter_combination_C(1,8) = 32;letter_combination_C(1,9) = 33;letter_combination_C(1,10) = 41;letter_combination_C(1,11) = 42;letter_combination_C(1,12) = 43;letter_combination_C(1,13) = 41;letter_combination_C(1,14) = 42;letter_combination_C(1,15) = 43;
    letter_combination_C(1,16) = 51;letter_combination_C(1,17) = 52;letter_combination_C(1,18) = 53;letter_combination_C(1,19) = 51;letter_combination_C(1,20) = 52;letter_combination_C(1,21) = 53;
    
    cond3_sc_H = cell(1,6);cond3_sc_H{1,1} = 'S';cond3_sc_H{1,2} = 'C';cond3_sc_H{1,3} = 'S';cond3_sc_H{1,4} = 'C';cond3_sc_H{1,5} = 'S';cond3_sc_H{1,6} = 'C';cond3_sc_K = cell(1,6);cond3_sc_K{1,1} = 'S';cond3_sc_K{1,2} = 'C';cond3_sc_K{1,3} = 'S';cond3_sc_K{1,4} = 'C';
    cond3_sc_K{1,5} = 'S';cond3_sc_K{1,6} = 'C';cond3_sc_S = cell(1,6);cond3_sc_S{1,1} = 'K';cond3_sc_S{1,2} = 'K';cond3_sc_S{1,3} = 'K';cond3_sc_S{1,4} = 'H';cond3_sc_S{1,5} = 'H';cond3_sc_S{1,6} = 'H';cond3_sc_C = cell(1,6);cond3_sc_C{1,1} = 'K';cond3_sc_C{1,2} = 'K';
    cond3_sc_C{1,3} = 'K';cond3_sc_C{1,4} = 'H';cond3_sc_C{1,5} = 'H';cond3_sc_C{1,6} = 'H';
    
    cond4_NWZ_H = ones(1,12);cond4_NWZ_H(1,1:4) = 1;cond4_NWZ_H(1,5:8) = 2;cond4_NWZ_H(1,9:12) = 3;cond4_NWZ_K = ones(1,12);cond4_NWZ_K(1,1:4) = 1;
    cond4_NWZ_K(1,5:8) = 2;cond4_NWZ_K(1,9:12) = 3;cond4_QJG_S = ones(1,12);cond4_QJG_S(1,1:4) = 1;cond4_QJG_S(1,5:8) = 2;cond4_QJG_S(1,9:12) = 3;
    cond4_QJG_C = ones(1,12);cond4_QJG_C(1,1:4) = 1;cond4_QJG_C(1,5:8) = 2;cond4_QJG_C(1,9:12) = 3;
    
    cond5_QJG_H = ones(1,12);cond5_QJG_H(1,1:4) = 1;cond5_QJG_H(1,5:8) = 2;cond5_QJG_H(1,9:12) = 3;cond5_QJG_K = ones(1,12);cond5_QJG_K(1,1:4) = 1;cond5_QJG_K(1,5:8) = 2;cond5_QJG_K(1,9:12) = 3;
    cond5_NWZ_S = ones(1,12);cond5_NWZ_S(1,1:4) = 1;cond5_NWZ_S(1,5:8) = 2;cond5_NWZ_S(1,9:12) = 3;cond5_NWZ_C = ones(1,12);cond5_NWZ_C(1,1:4) = 1;cond5_NWZ_C(1,5:8) = 2;cond5_NWZ_C(1,9:12) = 3;
    
    letter_str = cell(32,2);%    storing letter combinations that randomly selected
    
    % ***************************************
    %    H conditions ( 7 trials each session)
    % ***************************************
    letter_combination = letter_combination_H;
    %H condition 1 & 2
    target_letter = target_letter_H;
    similar_target_letter = target_letter_K;
    [pre_letter_str] = condition_1_2 (letter_combination, target_letter, spacing_cond1, spacing_cond2, spacing_cond3, similar_target_letter);
    for n = 1:2
        letter_str{n,1} = pre_letter_str{n,1};
        letter_str{n,2} = pre_letter_str{n,2};
    end
    
    %H condition 3
    target_letter = target_letter_H;
    cond3_elements = cond3_sc_H;
    one_of_optarget1 = target_letter_C;
    one_of_optarget2 = target_letter_S;
    [pre_letter_str, new_cond3] = condition_3 (letter_combination, cond3_elements, one_of_optarget1, one_of_optarget2, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    cond3_sc_H = new_cond3;
    for n = 1:2
    letter_str{3,n} = pre_letter_str{1,n};
    end
    
    %H condition 4_5
    target_letter = target_letter_H;
    similar_letter1 = Opposite_letter_N;similar_letter2 = Opposite_letter_W;similar_letter3 = Opposite_letter_Z;
    Opposite_letter1 = Opposite_letter_Q;Opposite_letter2 = Opposite_letter_J;Opposite_letter3 = Opposite_letter_G;
    cond4_elements = cond4_NWZ_H;cond5_elements = cond5_QJG_H;
    [pre_letter_str, temporal_cond4_elements, temporal_cond5_elements] = condition_4_5 (letter_combination, cond4_elements, cond5_elements, similar_letter1, similar_letter2, similar_letter3, Opposite_letter1, Opposite_letter2, Opposite_letter3, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    for n = 1:4
        letter_str{3+n,1} = pre_letter_str{n,1};
        letter_str{3+n,2} = pre_letter_str{n,2};
    end
    cond4_NWZ_H = temporal_cond4_elements;
    cond5_QJG_H = temporal_cond5_elements;
    
    % ***************************************
    %    K conditions ( 7 trials each session)
    % ***************************************
    letter_combination = letter_combination_K;
    %K condition 1 & 2
    target_letter = target_letter_K;
    similar_target_letter = target_letter_H;
    [pre_letter_str] = condition_1_2 (letter_combination, target_letter, spacing_cond1, spacing_cond2, spacing_cond3, similar_target_letter);
    for n = 1:2
        letter_str{7+n,1} = pre_letter_str{n,1};
        letter_str{7+n,2} = pre_letter_str{n,2};
    end
    %K condition 3
    target_letter = target_letter_K;
    cond3_elements = cond3_sc_K;
    one_of_optarget1 = target_letter_C;one_of_optarget2 = target_letter_S;
    [pre_letter_str, new_cond3] = condition_3 (letter_combination, cond3_elements, one_of_optarget1, one_of_optarget2, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    cond3_sc_H = new_cond3;
    for n = 1:2
    letter_str{10,n} = pre_letter_str{1,n};
    end
    
    %K condition 4_5
    target_letter = target_letter_K;
    similar_letter1 = Opposite_letter_N;similar_letter2 = Opposite_letter_W;similar_letter3 = Opposite_letter_Z;
    Opposite_letter1 = Opposite_letter_Q;Opposite_letter2 = Opposite_letter_J;Opposite_letter3 = Opposite_letter_G;
    cond4_elements = cond4_NWZ_K;cond5_elements = cond5_QJG_K;
    [pre_letter_str, temporal_cond4_elements, temporal_cond5_elements] = condition_4_5 (letter_combination, cond4_elements, cond5_elements, similar_letter1, similar_letter2, similar_letter3, Opposite_letter1, Opposite_letter2, Opposite_letter3, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    for n = 1:4
        letter_str{10+n,1} = pre_letter_str{n,1};
        letter_str{10+n,2} = pre_letter_str{n,2};
    end
    cond4_NWZ_K = temporal_cond4_elements;
    cond5_QJG_K = temporal_cond5_elements;
    
    % ***************************************
    %    S conditions ( 7 trials each session)
    % ***************************************
    letter_combination = letter_combination_S;
    % S condition 1 & 2
    target_letter = target_letter_S;similar_target_letter = target_letter_C;
    [pre_letter_str] = condition_1_2 (letter_combination, target_letter, spacing_cond1, spacing_cond2, spacing_cond3, similar_target_letter);
    for n = 1:2
        letter_str{14+n,1} = pre_letter_str{n,1};
        letter_str{14+n,2} = pre_letter_str{n,2};
    end
    % S condition 3
    target_letter = target_letter_S;
    cond3_elements = cond3_sc_S;
    one_of_optarget1 = target_letter_H;one_of_optarget2 = target_letter_K;
    [pre_letter_str, new_cond3] = condition_3 (letter_combination, cond3_elements, one_of_optarget1, one_of_optarget2, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    cond3_sc_S = new_cond3;
    for n = 1:2
    letter_str{17,n} = pre_letter_str{1,n};
    end
    % S condition 4_5
    target_letter = target_letter_S;
    similar_letter1 = Opposite_letter_Q;similar_letter2 = Opposite_letter_J;similar_letter3 = Opposite_letter_G;
    Opposite_letter1 = Opposite_letter_N;Opposite_letter2 = Opposite_letter_W;Opposite_letter3 = Opposite_letter_Z;
    cond4_elements = cond4_QJG_S;cond5_elements = cond5_NWZ_S;
    [pre_letter_str, temporal_cond4_elements, temporal_cond5_elements] = condition_4_5 (letter_combination, cond4_elements, cond5_elements, similar_letter1, similar_letter2, similar_letter3, Opposite_letter1, Opposite_letter2, Opposite_letter3, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    for n = 1:4
        letter_str{17+n,1} = pre_letter_str{n,1};
        letter_str{17+n,2} = pre_letter_str{n,2};
    end
    cond4_QJG_S = temporal_cond4_elements;
    cond5_NWZ_S = temporal_cond5_elements;
    
    % ***************************************
    %    C conditions ( 7 trials each session)
    % ***************************************
    letter_combination = letter_combination_C;
    % C condition 1 & 2
    target_letter = target_letter_C;similar_target_letter = target_letter_S;
    [pre_letter_str] = condition_1_2 (letter_combination, target_letter, spacing_cond1, spacing_cond2, spacing_cond3, similar_target_letter);
    for n = 1:2
        letter_str{21+n,1} = pre_letter_str{n,1};
        letter_str{21+n,2} = pre_letter_str{n,2};
    end
    % C condition 3
    target_letter = target_letter_C;
    cond3_elements = cond3_sc_C;
    one_of_optarget1 = target_letter_H;one_of_optarget2 = target_letter_K;
    [pre_letter_str, new_cond3] = condition_3 (letter_combination, cond3_elements, one_of_optarget1, one_of_optarget2, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    cond3_sc_C = new_cond3;
    for n = 1:2
    letter_str{24,n} = pre_letter_str{1,n};
    end
    
    % C condition 4_5
    target_letter = target_letter_C;
    similar_letter1 = Opposite_letter_Q;similar_letter2 = Opposite_letter_J;similar_letter3 = Opposite_letter_G;
    Opposite_letter1 = Opposite_letter_N;Opposite_letter2 = Opposite_letter_W;Opposite_letter3 = Opposite_letter_Z;
    cond4_elements = cond4_QJG_C;cond5_elements = cond5_NWZ_C;
    [pre_letter_str, temporal_cond4_elements, temporal_cond5_elements] = condition_4_5 (letter_combination, cond4_elements, cond5_elements, similar_letter1, similar_letter2, similar_letter3, Opposite_letter1, Opposite_letter2, Opposite_letter3, spacing_cond1, spacing_cond2, spacing_cond3, target_letter);
    for n = 1:4
        letter_str{24+n,1} = pre_letter_str{n,1};
        letter_str{24+n,2} = pre_letter_str{n,2};
    end
    cond4_QJG_C = temporal_cond4_elements;
    cond5_NWZ_C = temporal_cond5_elements;
    
    % ***********************************************************
    %    4 nonoisetrials, totally 32 trials (4*7 + 4) per session
    % ***********************************************************
    letter_str{29,1} = target_letter_H;letter_str{30,1} = target_letter_K;letter_str{31,1} = target_letter_S;letter_str{32,1} = target_letter_C;
    letter_str(29:32,2) = {'mixed control'};
    % **********************************************************************
    %     Test part:
    %     While exp_type = 1 script runs a whole practice session ( 1 noise-session + 1 blocked session)
    %     While exp_type = 2 script runs a whole real test session (1 noise-session + 1 blocked session)
    % **********************************************************************
    pre_selected_letter = cell(32,1);
    RT = cell(44,4);
    for n = 1:32
        pre_selected_letter{n, 1} = randsample(letter_str(:,1),1);
        selected_letter = cell2mat(pre_selected_letter{n, 1});
        
        fixation_cross_show(wPtr,h)
        [start_time] = show_letters(wPtr,h,selected_letter);
        
        [th_row, th_column]=find(cellfun(@(x) strcmp(x,pre_selected_letter{n, 1}),letter_str(:,1)));
        RT{n,4} = letter_str{th_row(1),2}; 
        letter_str(th_row(1),:) = [];
        
        central_letter = selected_letter(length(selected_letter)/2+0.5);
        
        [pre_RT] = make_decision (wPtr, h, odd_or_even, exp_type, start_time, left_key, right_key, central_letter);
        for m = 1:3
            RT{n,m} = pre_RT{1,m};
        end
    end
    
    
    if odd_or_even == 1
        img = imread('./image/odd s for 12 single letters.png');
    end
    if odd_or_even == 0
        img = imread('./image/even s for 12 single letters.png');
    end
    [y, x, depth] = size(img);
    x = x/1.5;
    y = y/1.5;
    t1 = Screen('MakeTexture', wPtr, img);
    Screen('DrawTexture', wPtr, t1, [],  [(w-x)/2 (h-y)/2 (w-x)/2+x (h-y)/2+y]);
    Screen('Flip',wPtr);
    
    while 1
        [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
        if keyCode(spacekey)
            break;
        end
    end
    
    blocked_session = cell(12,1);
    for n = 1:3
        blocked_session{n,1} = 'H';
        blocked_session{3+n,1} = 'K';
        blocked_session{6+n,1} = 'S';
        blocked_session{9+n,1} = 'C';
    end
    pre_selected_letter = cell(12,1);
    
    for n = 1:12
        pre_selected_letter{n, 1} = randsample(blocked_session,1);
        selected_letter = cell2mat(pre_selected_letter{n, 1});
        
        fixation_cross_show(wPtr,h)
        [start_time] = show_letters(wPtr,h,selected_letter);
        
        [th_row, th_column]=find(cellfun(@(x) strcmp(x,pre_selected_letter{n, 1}),blocked_session));
        blocked_session(th_row(1)) = [];
        
        central_letter = selected_letter;
        [pre_RT] = make_decision (wPtr, h, odd_or_even, exp_type, start_time, left_key, right_key, central_letter);
        for m = 1:3
            RT{32+n,m} = pre_RT{1,m};
        end
        RT(33:44,4) = {'blocked control'}; 
    end
end



header = {'RT', 'T/F', 'L/R', 'Combination_of_conditions'};
pre_result = [header; RT];
folder = './result';
save([folder '/Result_Detail_Subject' num2str(Subject_ID) '.mat'], 'pre_result');


result_table = cell(17,2);
result_table(1:17,1) = {'11' '12' '13' '21' '22' '23' '31' '32' '33' '41' '42' '43' '51' '52' '53' 'mixed control' 'blocked control'};
for n = 1:17
    th_error = [];
    [th_row_array, th_column]=find(cellfun(@(x) strcmp(x,result_table{n, 1}),RT(:,4)));
    if ~isempty(th_row_array)
        for k = 1:length(th_row_array)
            if strcmp(RT(th_row_array(k),2), 'Error') || strcmp(RT(th_row_array(k),2), 'N/A')
                th_error(k) = k;
            end
        end
        th_error = th_error>0;
        th_row_array(th_error) = [];
    end
    if isempty(th_row_array)
        result_table{n,2} = 0;
    else
        result_table{n,2} = sum(cell2mat(RT(th_row_array,1)))/length(th_row_array);
    end
end

header = {'Combination_of_conditions', 'Average_RT_per_Condition'};
pre_result_table = [header; result_table];
folder = './result';
save([folder '/RT_Table_Subject' num2str(Subject_ID) '.mat'], 'pre_result_table');

img = imread('./image/the end.png');
[y, x, depth] = size(img);
x = x/1.5;
y = y/1.5;
t1 = Screen('MakeTexture', wPtr, img);
Screen('DrawTexture', wPtr, t1, [],  [(w-x)/2 (h-y)/2 (w-x)/2+x (h-y)/2+y]);
Screen('Flip',wPtr);
while 1
    [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
    if keyCode(quitkey)
        Screen(wPtr,'Close');
        close all
        return;
    end
end
end