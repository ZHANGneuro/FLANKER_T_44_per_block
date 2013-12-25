function [pre_letter_str] = condition_1_2 (letter_combination, target_letter, spacing_cond1, spacing_cond2, spacing_cond3, similar_target_letter)

pre_letter_str = cell(2,2);
temporal_code = randsample(letter_combination(1,1:3),1);
code_str = num2str(temporal_code);
if strcmp('11',code_str)
    pre_letter_str{1,1} = [target_letter spacing_cond1 target_letter spacing_cond1 target_letter spacing_cond1 target_letter  spacing_cond1 target_letter spacing_cond1 target_letter spacing_cond1 target_letter];
    pre_letter_str{1,2} = '11';
elseif strcmp('12',code_str)
    pre_letter_str{1,1} = [target_letter spacing_cond2 target_letter spacing_cond2 target_letter spacing_cond2 target_letter  spacing_cond2 target_letter spacing_cond2 target_letter spacing_cond2 target_letter];
    pre_letter_str{1,2} = '12';
elseif strcmp('13',code_str)
    pre_letter_str{1,1} = [target_letter spacing_cond3 target_letter spacing_cond3 target_letter spacing_cond3 target_letter  spacing_cond3 target_letter spacing_cond3 target_letter spacing_cond3 target_letter];
    pre_letter_str{1,2} = '13';
end

temporal_code = randsample(letter_combination(1,4:6),1);
code_str = num2str(temporal_code);
th_column_4_6 = find(letter_combination(1,4:6)==temporal_code);
if strcmp('21',code_str)
    pre_letter_str{2,1} = [similar_target_letter spacing_cond1 similar_target_letter spacing_cond1 similar_target_letter spacing_cond1 target_letter  spacing_cond1 similar_target_letter spacing_cond1 similar_target_letter spacing_cond1 similar_target_letter];
    pre_letter_str{2,2} = '21';
elseif strcmp('22',code_str)
    pre_letter_str{2,1} = [similar_target_letter spacing_cond2 similar_target_letter spacing_cond2 similar_target_letter spacing_cond2 target_letter  spacing_cond2 similar_target_letter spacing_cond2 similar_target_letter spacing_cond2 similar_target_letter];
    pre_letter_str{2,2} = '22';
elseif strcmp('23',code_str)
    pre_letter_str{2,1} = [similar_target_letter spacing_cond3 similar_target_letter spacing_cond3 similar_target_letter spacing_cond3 target_letter  spacing_cond3 similar_target_letter spacing_cond3 similar_target_letter spacing_cond3 similar_target_letter];
    pre_letter_str{2,2} = '23';
end


end