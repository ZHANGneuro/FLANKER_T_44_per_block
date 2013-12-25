function [pre_letter_str, temporal_cond4_elements, temporal_cond5_elements] = condition_4_5 (letter_combination, cond4_elements, cond5_elements, similar_letter1, similar_letter2, similar_letter3, Opposite_letter1, Opposite_letter2, Opposite_letter3, spacing_cond1, spacing_cond2, spacing_cond3, target_letter)

pre_letter_str = cell(4,2);

for n = 1:4
    if n == 1 || n == 2
        if n == 1
            temporal_code = randsample(letter_combination(1,10:12),1);
        end
        if n == 2
            temporal_code = randsample(letter_combination(1,13:15),1);
        end
        code_str = num2str(temporal_code);
        whichway_of_3ways = randsample(cond4_elements,1); % 1 - NWZ, 2 - WZN,  3 - ZNW
        if whichway_of_3ways == 1
            if strcmp('41',code_str)
                pre_letter_str{n,1} = [similar_letter1 spacing_cond1 similar_letter2 spacing_cond1 similar_letter3 spacing_cond1 target_letter  spacing_cond1 similar_letter1 spacing_cond1 similar_letter2 spacing_cond1 similar_letter3];
                pre_letter_str{n,2} = '41';
            elseif strcmp('42',code_str)
                pre_letter_str{n,1} = [similar_letter1 spacing_cond2 similar_letter2 spacing_cond2 similar_letter3 spacing_cond2 target_letter  spacing_cond2 similar_letter1 spacing_cond2 similar_letter2 spacing_cond2 similar_letter3];
                pre_letter_str{n,2} = '42';
            elseif strcmp('43',code_str)
                pre_letter_str{n,1} = [similar_letter1 spacing_cond3 similar_letter2 spacing_cond3 similar_letter3 spacing_cond3 target_letter  spacing_cond3 similar_letter1 spacing_cond3 similar_letter2 spacing_cond3 similar_letter3];
                pre_letter_str{n,2} = '43';
            end
            th_column = find(cond4_elements==whichway_of_3ways);
            cond4_elements(th_column(1)) = [];
            temporal_cond4_elements = cond4_elements;
        end
        if whichway_of_3ways == 2
            if strcmp('41',code_str)
                pre_letter_str{n,1} = [similar_letter2 spacing_cond1 similar_letter3 spacing_cond1 similar_letter1 spacing_cond1 target_letter  spacing_cond1 similar_letter2 spacing_cond1 similar_letter3 spacing_cond1 similar_letter1];
                pre_letter_str{n,2} = '41';
            elseif strcmp('42',code_str)
                pre_letter_str{n,1} = [similar_letter2 spacing_cond2 similar_letter3 spacing_cond2 similar_letter1 spacing_cond2 target_letter  spacing_cond2 similar_letter2 spacing_cond2 similar_letter3 spacing_cond2 similar_letter1];
                pre_letter_str{n,2} = '42';
            elseif strcmp('43',code_str)
                pre_letter_str{n,1} = [similar_letter2 spacing_cond3 similar_letter3 spacing_cond3 similar_letter1 spacing_cond3 target_letter  spacing_cond3 similar_letter2 spacing_cond3 similar_letter3 spacing_cond3 similar_letter1];
                pre_letter_str{n,2} = '43';
            end
            th_column = find(cond4_elements==whichway_of_3ways);
            cond4_elements(th_column(1)) = [];
            temporal_cond4_elements = cond4_elements;
        end
        if whichway_of_3ways == 3
            if strcmp('41',code_str)
                pre_letter_str{n,1} = [similar_letter3 spacing_cond1 similar_letter1 spacing_cond1 similar_letter2 spacing_cond1 target_letter  spacing_cond1 similar_letter3 spacing_cond1 similar_letter1 spacing_cond1 similar_letter2];
                pre_letter_str{n,2} = '41';
            elseif strcmp('42',code_str)
                pre_letter_str{n,1} = [similar_letter3 spacing_cond2 similar_letter1 spacing_cond2 similar_letter2 spacing_cond2 target_letter  spacing_cond2 similar_letter3 spacing_cond2 similar_letter1 spacing_cond2 similar_letter2];
                pre_letter_str{n,2} = '42';
            elseif strcmp('43',code_str)
                pre_letter_str{n,1} = [similar_letter3 spacing_cond3 similar_letter1 spacing_cond3 similar_letter2 spacing_cond3 target_letter  spacing_cond3 similar_letter3 spacing_cond3 similar_letter1 spacing_cond3 similar_letter2];
                pre_letter_str{n,2} = '43';
            end
            th_column = find(cond4_elements==whichway_of_3ways);
            cond4_elements(th_column(1)) = [];
            temporal_cond4_elements = cond4_elements;
        end
    end
    if n == 3 || n == 4
        if n == 3
        temporal_code = randsample(letter_combination(1,16:18),1);
        end
        if n == 4
        temporal_code = randsample(letter_combination(1,19:21),1);
        end
        code_str = num2str(temporal_code);
        whichway_of_3ways = randsample(cond5_elements,1); % 1 - QJG, 2 - JGQ,  3 - GQJ
        if whichway_of_3ways == 1
            if strcmp('51',code_str)
                pre_letter_str{n,1} = [Opposite_letter1 spacing_cond1 Opposite_letter2 spacing_cond1 Opposite_letter3 spacing_cond1 target_letter  spacing_cond1 Opposite_letter1 spacing_cond1 Opposite_letter2 spacing_cond1 Opposite_letter3];
                pre_letter_str{n,2} = '51';
            elseif strcmp('52',code_str)
                pre_letter_str{n,1} = [Opposite_letter1 spacing_cond2 Opposite_letter2 spacing_cond2 Opposite_letter3 spacing_cond2 target_letter  spacing_cond2 Opposite_letter1 spacing_cond2 Opposite_letter2 spacing_cond2 Opposite_letter3];
                pre_letter_str{n,2} = '52';
            elseif strcmp('53',code_str)
                pre_letter_str{n,1} = [Opposite_letter1 spacing_cond3 Opposite_letter2 spacing_cond3 Opposite_letter3 spacing_cond3 target_letter  spacing_cond3 Opposite_letter1 spacing_cond3 Opposite_letter2 spacing_cond3 Opposite_letter3];
                pre_letter_str{n,2} = '53';
            end
            th_column = find(cond5_elements==whichway_of_3ways);
            cond5_elements(th_column(1)) = [];
            temporal_cond5_elements = cond5_elements;
        end
        if whichway_of_3ways == 2
            if strcmp('51',code_str)
                pre_letter_str{n,1} = [Opposite_letter2 spacing_cond1 Opposite_letter3 spacing_cond1 Opposite_letter1 spacing_cond1 target_letter  spacing_cond1 Opposite_letter2 spacing_cond1 Opposite_letter3 spacing_cond1 Opposite_letter1];
                pre_letter_str{n,2} = '51';
            elseif strcmp('52',code_str)
                pre_letter_str{n,1} = [Opposite_letter2 spacing_cond2 Opposite_letter3 spacing_cond2 Opposite_letter1 spacing_cond2 target_letter  spacing_cond2 Opposite_letter2 spacing_cond2 Opposite_letter3 spacing_cond2 Opposite_letter1];
                pre_letter_str{n,2} = '52';
            elseif strcmp('53',code_str)
                pre_letter_str{n,1} = [Opposite_letter2 spacing_cond3 Opposite_letter3 spacing_cond3 Opposite_letter1 spacing_cond3 target_letter  spacing_cond3 Opposite_letter2 spacing_cond3 Opposite_letter3 spacing_cond3 Opposite_letter1];
                pre_letter_str{n,2} = '53';
            end
            th_column = find(cond5_elements==whichway_of_3ways);
            cond5_elements(th_column(1)) = [];
            temporal_cond5_elements = cond5_elements;
        end
        if whichway_of_3ways == 3
            if strcmp('51',code_str)
                pre_letter_str{n,1} = [Opposite_letter3 spacing_cond1 Opposite_letter1 spacing_cond1 Opposite_letter2 spacing_cond1 target_letter  spacing_cond1 Opposite_letter3 spacing_cond1 Opposite_letter1 spacing_cond1 Opposite_letter2];
                pre_letter_str{n,2} = '51';
            elseif strcmp('52',code_str)
                pre_letter_str{n,1} = [Opposite_letter3 spacing_cond2 Opposite_letter1 spacing_cond2 Opposite_letter2 spacing_cond2 target_letter  spacing_cond2 Opposite_letter3 spacing_cond2 Opposite_letter1 spacing_cond2 Opposite_letter2];
                pre_letter_str{n,2} = '52';
            elseif strcmp('53',code_str)
                pre_letter_str{n,1} = [Opposite_letter3 spacing_cond3 Opposite_letter1 spacing_cond3 Opposite_letter2 spacing_cond3 target_letter  spacing_cond3 Opposite_letter3 spacing_cond3 Opposite_letter1 spacing_cond3 Opposite_letter2];
                pre_letter_str{n,2} = '53';
            end
            th_column = find(cond5_elements==whichway_of_3ways);
            cond5_elements(th_column(1)) = [];
            temporal_cond5_elements = cond5_elements;
        end
    end
end

end