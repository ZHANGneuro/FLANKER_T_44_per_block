function [pre_letter_str, new_cond3] = condition_3 (letter_combination, cond3_elements, one_of_optarget1, one_of_optarget2, spacing_cond1, spacing_cond2, spacing_cond3, target_letter)

pre_letter_str = cell(1,2);
temporal_code = randsample(letter_combination(1,7:9),1);
code_str = num2str(temporal_code);
isA_or_B = randsample(cond3_elements,1);

if isempty(setdiff(isA_or_B, one_of_optarget1))
    if strcmp('31',code_str)
        pre_letter_str{1,1} = [one_of_optarget1 spacing_cond1 one_of_optarget1 spacing_cond1 one_of_optarget1 spacing_cond1 target_letter  spacing_cond1 one_of_optarget1 spacing_cond1 one_of_optarget1 spacing_cond1 one_of_optarget1];
        pre_letter_str{1,2} = '31';
    elseif strcmp('32',code_str)
        pre_letter_str{1,1} = [one_of_optarget1 spacing_cond2 one_of_optarget1 spacing_cond2 one_of_optarget1 spacing_cond2 target_letter  spacing_cond2 one_of_optarget1 spacing_cond2 one_of_optarget1 spacing_cond2 one_of_optarget1];
        pre_letter_str{1,2} = '32';
    elseif strcmp('33',code_str)
        pre_letter_str{1,1} = [one_of_optarget1 spacing_cond3 one_of_optarget1 spacing_cond3 one_of_optarget1 spacing_cond3 target_letter  spacing_cond3 one_of_optarget1 spacing_cond3 one_of_optarget1 spacing_cond3 one_of_optarget1];
        pre_letter_str{1,2} = '33';
    end
    [th_row, th_column]=find(cellfun(@(x) strcmp(x,isA_or_B),cond3_elements));
    cond3_elements{th_row(1), th_column(1)} = [];
    cond3_temp = [cond3_elements{:}];
    new_cond3 = cellstr(cond3_temp(:))';
end
if isempty(setdiff(isA_or_B, one_of_optarget2))
    if strcmp('31',code_str)
        pre_letter_str{1,1} = [one_of_optarget2 spacing_cond1 one_of_optarget2 spacing_cond1 one_of_optarget2 spacing_cond1 target_letter  spacing_cond1 one_of_optarget2 spacing_cond1 one_of_optarget2 spacing_cond1 one_of_optarget2];
        pre_letter_str{1,2} = '31';
    elseif strcmp('32',code_str)
        pre_letter_str{1,1} = [one_of_optarget2 spacing_cond2 one_of_optarget2 spacing_cond2 one_of_optarget2 spacing_cond2 target_letter  spacing_cond2 one_of_optarget2 spacing_cond2 one_of_optarget2 spacing_cond2 one_of_optarget2];
        pre_letter_str{1,2} = '32';
    elseif strcmp('33',code_str)
        pre_letter_str{1,1} = [one_of_optarget2 spacing_cond3 one_of_optarget2 spacing_cond3 one_of_optarget2 spacing_cond3 target_letter  spacing_cond3 one_of_optarget2 spacing_cond3 one_of_optarget2 spacing_cond3 one_of_optarget2];
        pre_letter_str{1,2} = '33';
    end
    [th_row, th_column]=find(cellfun(@(x) strcmp(x,isA_or_B),cond3_elements));
    cond3_elements{th_row(1), th_column(1)} = [];
    cond3_temp = [cond3_elements{:}];
    new_cond3 = cellstr(cond3_temp(:))';
end


end