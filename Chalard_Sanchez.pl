/*
RUSH HOUR - Sliding block puzzle.
Coded by Patrick Chalard and Eric Sanchez

Consult this file and issue the command : start.
*/


:- dynamic pos/3, score/1, state/1.

% Initialize the score in zero
score(0).

% Display the Exit 
exit(0,'|').
exit(1,'|').
exit(2,' Exit').
exit(3,'|').
exit(4,'|').
exit(5,'|').
show_exit(X) :- exit(X,Y), write(Y).

% Start the game
start :- write('Welcome to our Rush Hour game'), nl,nl,
    instructions,
    write('First thing:'), nl,
    choose_level.

% Quit the game
quit :- halt.

% Game instructions
instructions :-
    nl,
    write('DRIVE THE CAR a TO THE EXIT ! '),
    write('Enter commands using standard Prolog syntax.'), nl,
    write('Available commands are:'), nl,
    write('start.                   -- to start the game.'), nl,
    write('choose_level             -- to select a level'), nl,
    write('instructions.            -- to see this message again.'), nl,
    write('quit.                    -- to end the game and quit.'), nl,
    nl.

% LEVEL CONSTRUCTION
level1 :- 
    tab(10), write('--- LEVEL 1 ---'), nl, % beginner 
    % pos(X,Y,Value)
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,0,b)),assert(pos(0,1,b)),assert(pos(0,5,m)),                                           % row 0
    assert(pos(1,0,o)),assert(pos(1,3,n)),assert(pos(1,5,m)),                                           % row 1
    assert(pos(2,0,o)),assert(pos(2,1,a)),assert(pos(2,2,a)),assert(pos(2,3,n)),assert(pos(2,5,m)),     % row 2
    assert(pos(3,0,o)),assert(pos(3,3,n)),                                                              % row 3
    assert(pos(4,0,d)),assert(pos(4,4,c)),assert(pos(4,5,c)),                                           % row 4
    assert(pos(5,0,d)),assert(pos(5,2,p)),assert(pos(5,3,p)),assert(pos(5,4,p)),                        % row 5
    show.
    
level2 :- 
    tab(10), write('--- LEVEL 2 ---'), nl, % beginner 
    % pos(X,Y,Value)
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,0,b)),assert(pos(0,3,m)),assert(pos(0,4,m)),assert(pos(0,5,m)),
    assert(pos(1,0,b)),assert(pos(1,3,c)),assert(pos(1,5,n)),
    assert(pos(2,0,a)),assert(pos(2,1,a)),assert(pos(2,3,c)),assert(pos(2,4,d)),assert(pos(2,5,n)),
    assert(pos(3,0,o)),assert(pos(3,1,o)),assert(pos(3,2,o)),assert(pos(3,4,d)),assert(pos(3,5,n)),
    assert(pos(4,2,i)),assert(pos(4,4,f)),assert(pos(4,5,f)),
    assert(pos(5,0,g)),assert(pos(5,1,g)),assert(pos(5,2,i)),assert(pos(5,3,h)),assert(pos(5,4,h)),
    show.

level3 :-
    tab(10), write('--- LEVEL 3 ---'), nl, % intermediate
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,0,m)),assert(pos(0,1,b)),assert(pos(0,2,b)),assert(pos(0,3,n)),
    assert(pos(1,0,m)),assert(pos(1,3,n)),
    assert(pos(2,0,m)),assert(pos(2,1,a)),assert(pos(2,2,a)),assert(pos(2,3,n)),
    assert(pos(3,2,c)),assert(pos(3,3,o)),assert(pos(3,4,o)),assert(pos(3,5,o)),
    assert(pos(4,2,c)),assert(pos(4,5,d)),
    assert(pos(5,2,p)),assert(pos(5,3,p)),assert(pos(5,4,p)),assert(pos(5,5,d)),
    show.

level4 :-
    tab(10), write('--- LEVEL 4 ---'), nl, % intermediate
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,0,b)),assert(pos(0,1,c)),assert(pos(0,2,c)),assert(pos(0,5,m)),
    assert(pos(1,0,b)),assert(pos(1,2,n)),assert(pos(1,5,m)),
    assert(pos(2,0,a)),assert(pos(2,1,a)),assert(pos(2,2,n)),assert(pos(2,5,m)),
    assert(pos(3,2,n)),assert(pos(3,3,o)),assert(pos(3,4,o)),assert(pos(3,5,o)),
    assert(pos(4,4,d)),
    assert(pos(5,0,p)),assert(pos(5,1,p)),assert(pos(5,2,p)),assert(pos(5,4,d)),
    show.

level5 :-
    tab(10), write('--- LEVEL 5 ---'), nl, % advanced
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,0,b)),assert(pos(0,1,b)),assert(pos(0,2,c)),assert(pos(0,3,m)),
    assert(pos(1,0,n)),assert(pos(1,2,c)),assert(pos(1,3,m)),
    assert(pos(2,0,n)),assert(pos(2,1,a)),assert(pos(2,2,a)),assert(pos(2,3,m)),
    assert(pos(3,0,n)),assert(pos(3,1,o)),assert(pos(3,2,o)),assert(pos(3,3,o)),
    assert(pos(5,3,p)),assert(pos(5,4,p)),assert(pos(5,5,p)),
    show.
    
level6 :-
    tab(10), write('--- LEVEL 6 ---'), nl, % advanced
    retractall(pos(_,_,_)),
    retractall(score(_)),
    asserta(score(0)),
    assert(pos(0,2,b)),assert(pos(0,3,m)),assert(pos(0,4,m)),assert(pos(0,5,m)),
    assert(pos(1,0,c)),assert(pos(1,2,b)),assert(pos(1,3,n)),assert(pos(1,4,d)),assert(pos(1,5,d)),
    assert(pos(2,0,c)),assert(pos(2,1,a)),assert(pos(2,2,a)),assert(pos(2,3,n)),
    assert(pos(3,1,i)),assert(pos(3,3,n)),assert(pos(3,4,f)),assert(pos(3,5,f)),
    assert(pos(4,0,g)),assert(pos(4,1,i)),assert(pos(4,2,h)),assert(pos(4,3,h)),assert(pos(4,5,i)),
    assert(pos(5,0,g)),assert(pos(5,1,o)),assert(pos(5,2,o)),assert(pos(5,3,o)),assert(pos(5,5,i)),
    show.
    

% Car attributes
is_little_car(Car) :- Car \== m, Car \== n, Car \== o, Car \== p.
is_big_car(Car) :- not(is_little_car(Car)).

% car orientation
is_vertical(Car) :- pos(X,Y,Car), is_little_car(Car), Z is X+1, pos(Z,Y,Car). % car reference coordinate on the grid is always the lefter and/or upper point of the car
is_vertical(Car) :- pos(X,Y,Car), is_big_car(Car), Z is X+2, pos(Z,Y,Car).
is_horizontal(Car) :- pos(X,Y,Car), is_little_car(Car), Z is Y+1, pos(X,Z,Car).
is_horizontal(Car) :- pos(X,Y,Car), is_big_car(Car), Z is Y+2, pos(X,Z,Car).

% Only detects one position of a car
is_occupied(X,Y,Car) :- pos(X,Y,Car), !.

% Is it able to move horizontally ?
able_to_move_left(Car) :- is_occupied(X,Y,Car), is_horizontal(Car), Z is Y-1, Z >= 0, not(pos(X,Z,_)), !. % check if the position on the left is empty
able_to_move_right(Car) :- is_occupied(X,Y,Car), is_horizontal(Car), is_big_car(Car), Z is Y+3, Z =< 5, not(pos(X,Z,_)), !. % check if the position on the right is empty, depending on the car's length
able_to_move_right(Car) :- is_occupied(X,Y,Car), is_horizontal(Car), is_little_car(Car), Z is Y+2, Z =< 5, not(pos(X,Z,_)),!.

% move the car horizontally (if possible) depending on the chosen direction and the car's length
move_horizontally(Car, Direction) :- Direction == q, able_to_move_left(Car), move_left(Car).
move_horizontally(Car, Direction) :- is_big_car(Car), Direction == d, able_to_move_right(Car), move_right_big(Car).
move_horizontally(Car, Direction) :- is_little_car(Car), Direction == d, able_to_move_right(Car), move_right_little(Car).
move_horizontally(Car, Direction) :- Car == a, Direction == d, pos(_,Y,Car), Y == 5, win. % if the car is 'a' it can go out the bounds (Y == 6 -> WIN)

% Is it able to move vertically ?
able_to_move_up(Car) :- is_occupied(X,Y,Car), is_vertical(Car), Z is X-1, Z >= 0, not(pos(Z,Y,_)), !. % check if the position up is empty
able_to_move_down(Car) :- is_occupied(X,Y,Car), is_vertical(Car), is_big_car(Car), Z is X+3, Z =< 5, not(pos(Z,Y,_)), !. % check if the position down is empty, depending on the car's length
able_to_move_down(Car) :- is_occupied(X,Y,Car), is_vertical(Car), is_little_car(Car), Z is X+2, Z =< 5, not(pos(Z,Y,_)), !.

% move the car vertically (if possible) depending on the chosen direction and the car's length           
move_vertically(Car, Direction) :- Direction == z, able_to_move_up(Car), move_up(Car).            
move_vertically(Car, Direction) :- is_big_car(Car), Direction == s, able_to_move_down(Car), move_down_big(Car).
move_vertically(Car, Direction) :- is_little_car(Car), Direction == s, able_to_move_down(Car), move_down_little(Car).


% Display the matrix
show :- nl, score(Score), write('Score : '), write(Score), nl, show(0, z), nl, read_selection.
show(I, CarSelected) :- I<6, tab(10), show_exit(0), write(' '),
    show(I,0,CarSelected), show_exit(I), nl, NewI is I+1, show(NewI, CarSelected).
show(I,_) :- I>5, !.
show(I,J, CarSelected) :- J<6, pos(I,J,X), CarSelected \== X,
    write(X), write(' '), NewJ is J+1, show(I,NewJ, CarSelected).
show(I,J, CarSelected) :- J<6, pos(I,J,X), CarSelected == X,
    write('* '), NewJ is J+1, show(I,NewJ, CarSelected).
show(I,J,CarSelected) :- J<6, not(pos(I,J,_)), write('  '), NewJ is J+1, show(I,NewJ,CarSelected).
show(_,J,_) :- J>5,!. 
 

% Select a car
read_selection :- write('Enter the letter of a car to select it, or other possible command (see instructions)'), nl,
    read(Input), nl, selection(Input).


% possible inputs for a car
is_a_car(Selection) :-  Selection == a; Selection == b; Selection == c; Selection == d;
                        Selection == i; Selection == f; Selection == g; Selection == h;
                        Selection == m; Selection == n; Selection == o; Selection == p.

% possible commands the player can enter in game
is_a_command(Selection) :-  Selection == choose_level, choose_level;
                            Selection == quit, quit;
                            Selection == instructions, instructions, show.
                            

% Show selection
selection(OptionSelected) :-    is_a_car(OptionSelected),show(0, OptionSelected), read_movement(OptionSelected); 
                                is_a_command(OptionSelected);
                                instructions, nl, write('----------------- INVALID OPTION -----------------'),nl,show.


% Level selection
choose_level :- write('Choose your level:'), nl,
    write('enter 1 or 2 for a begginer one'), nl,
    write('enter 3 or 4 for intermediate'), nl,
    write('enter 5 or 6 for advanced'),nl,
    read(Level), nl, create_level(Level);
    write('INVALID LEVEL SELECTION'), nl, choose_level.

create_level(Level) :- Level is 1, level1;
                       Level is 2, level2;
                       Level is 3, level3;
                       Level is 4, level4;
                       Level is 5, level5;
                       Level is 6, level6.


% Move the car
read_movement(Car) :- is_horizontal(Car), write('Enter the direction (q - left, d - right)'),
    nl, read(Direction), move_horizontally(Car, Direction).
read_movement(Car) :- is_vertical(Car),  write('Enter the direction (z - up, s - down)'),
    nl, read(Direction), move_vertically(Car, Direction).


% Move left - right
move_left(Car) :- is_little_car(Car), is_occupied(X,Y,Car), Z is Y+1, retract(pos(X,Z,Car)),
    Z_2 is Y-1, asserta(pos(X,Z_2,Car)), increase_score, show.
move_left(Car) :- is_big_car(Car), is_occupied(X,Y,Car), Z is Y+2, retract(pos(X,Z,Car)),
    Z_2 is Y-1, asserta(pos(X,Z_2,Car)), increase_score, show.
move_right_big(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is Y+3, assertz(pos(X,Z,Car)), increase_score, show.
move_right_little(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is Y+2, assertz(pos(X,Z,Car)), increase_score, show.

% Move up - down
move_up(Car) :- is_little_car(Car), is_occupied(X,Y,Car), Z is X+1, retract(pos(Z,Y,Car)),
    Z_2 is X-1, asserta(pos(Z_2,Y,Car)), increase_score, show.
move_up(Car) :- is_big_car(Car), is_occupied(X,Y,Car), Z is X+2, retract(pos(Z,Y,Car)),
    Z_2 is X-1, asserta(pos(Z_2,Y,Car)), increase_score, show.
move_down_big(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is X+3, assertz(pos(Z,Y,Car)), increase_score, show.
move_down_little(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is X+2, assertz(pos(Z,Y,Car)), increase_score, show.

% Score
increase_score :- score(Score), NewScore is Score+1, asserta(score(NewScore)), retract(score(Score)), !.

% Win
win :- 
    write('-----------------'),
    write('---- YOU WIN ----'),
    write('-----------------'),nl,
    score(Score), write('Your score is : '), write(Score), nl,nl,
    start.


%=====================================================================
% ATTEMPT TO APPLY AN ALGORITHM FOR SEARCHING THE OPTIMAL PATH
% ====================================================================

% Get de values into a list (States for searching tree data structure)
state([]).
get_values :- get_values(5).
get_values(I) :- I>=0, get_values(I,5), NewI is I-1, get_values(NewI).
get_values(I) :- I<0, !.
get_values(I,J) :- J>=0, is_occupied(I,J,Car), state(L1),!, add_value(Car,L1,L2),
    retract(state(L1)), asserta(state(L2)), NewJ is J-1, get_values(I,NewJ).
get_values(I,J) :- J>=0, not(is_occupied(I,J,_)), state(L1),!, add_value(z,L1,L2),
    retract(state(L1)), asserta(state(L2)), NewJ is J-1, get_values(I,NewJ).
get_values(_,J) :- J<0,!. 


add_value(Value, L1, L2) :- L2 = [Value|L1]. 

% Compare to the final state 
n_element([Y|_], 1, Y).
n_element([_|Xs], N, Y):-
          N2 is N - 1,
          n_element(Xs, N2, Y).
 % Final state n=17 and n=18 -> a
%final_state :- n_element().

/* BREADTH-FIRST-SEARCH

bfs(StartStat, FinalStat) :- 
scan :- can_up, can_down, can_right, can_left.
can_up(Y) :- is_vertical(Y), able_to_move_up(Y), move_up_(Y). 
can_down(Y) :- is_vertical(Y), able_to_move_down(Y), is_big_car(Y), move_down_b_(Y).
can_down(Y) :- is_vertical(Y), able_to_move_down(Y), is_little_car(Y), move_down_l_(Y).

can_right(X) :- is_horizontal(X), able_to_move_right(X).
can_left(X) :- is_horizontal(X), able_to_move_left(X).

finish :- move_h(a,d).

move_up2(Car) :- is_little_car(Car), is_occupied(X,Y,Car), Z is X+1, retract(pos(Z,Y,Car)),
    Z_2 is X-1, asserta(pos(Z_2,Y,Car)), increase_score.
move_up2(Car) :- is_big_car(Car), is_occupied(X,Y,Car), Z is X+2, retract(pos(Z,Y,Car)),
    Z_2 is X-1, asserta(pos(Z_2,Y,Car)), increase_score.
move_down_b2(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is X+3, assertz(pos(Z,Y,Car)), increase_score.
move_down_l2(Car) :- is_occupied(X,Y,Car), retract(pos(X,Y,Car)), Z is X+2, assertz(pos(Z,Y,Car)), increase_score.

*/


