FLANKER_T_44_per_block
======================
Note When you run this script a subject_ID must be given, this is due to that Response Keys are counterbalanced by Subject Number, e.g. flanker(1), flanker(2).....

This script implements the Flanker Task described in:
Eriksen, B.A. & Eriksen, C.W (1974) Effects of noise letters upon the identification of a target letter in a nonsearch task. Perception & Psychophysics, 16, 143-149.

There are also few modifications that have been made to this script:
1. Applying Times New Roman font rather than Paratype fonts applied in Eriksen & Eriksen (1974).
2. Every inter-stimulus interval is randomly picked from an array (500, 700, 800 ms). 

Those changes are from the application described in:
Rowe, G., Hirsh, J. B., & Anderson, A. K. (2007). Positive affect increases the breadth of attentional selection. Proceedings of the National Academy of Sciences, 104(1), 383-388.

!!!Very important note - This script is a simplified version of Flanker task!!!

In Eriksen & Eriksen (1974):
the trial is equipped with 6 sessions, each session contains 3 Blocks and 1 Blocked-Non-Noise-control (12 single letter), each Block consists of 28 Noise-letter-conbinations and 1 Mixed-Non-Noise-control (4 single letters H K S C).

That is, the whole trial has 6 * ( 3 * (28+4) + 12 ) = 648 stimuli

In this script:
it runs 1 session, which contains 1 Block and 1 Blocked-Non-Noise-control, the Block contains 28 Noise-letter-conbinations and 1 Mixed-Non-Noise-control (4 single letters H K S C).

That is, the whole trial has (28+4) + 12 = 44 stimuli (the other 44 stimuli for practice).

This made the RT result very limited for analysis, as 44 stimuli cannot cover all potential letter-combination conditions, but it is fine for knowing Flanker task and appropriate for the use of presentation.

In generated result, "Combination_of_conditions"  is represented by numbers, e.g. "11" means "letter-combination-condition1 + spacing condition1".
User is not able to quit the progarm during it running, program can be quit by pressing 'ESC' in the end of task.

Bo 23rd December 2013 - bozhang.neuro@gmail.com
