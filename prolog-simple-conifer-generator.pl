print_stars(N) :-
    forall(between(1, N, _),	% something like aloop from 1 to N
		   write('█')).			% writes N amount of "*" characters

print_spaces_left(N) :-
    forall(between(1, N, _), 	% something like aloop from 1 to N
		   write('░')).			% writes N amount of "fake space" character

% if an even Size, starts printing with 2 symbols, else 1
get_min(Size, Min) :-
    (   Size mod 2 =:= 0 		% checks if Size is divisible by 2
    ->  Min = 2					% if yes, returns 2
    ;   Min = 1					% if no, returns 1
    ).

% adds extra space to left if an uneven number
get_space_count_left(Max, SpaceCountLeft) :-
    (   Max mod 2 =:= 0						% checks if max is divisible by 2
    ->  SpaceCountLeft is div(Max, 2)		% if yes, return max/2 rounded down
    ;   SpaceCountLeft is div(Max, 2) + 1	% if no, return max/2 rounded up
    ).

% makes the spaces vertically aligned on both sides
get_space_count_right(Size, SpaceCountLeft, SpaceCountRight) :-
    (   Size mod 2 =:= 0						% cheks if Size is divisible by 2
    ->  SpaceCountRight = SpaceCountLeft		% if yes, the spaces on right = the spaces on left
    ;   SpaceCountRight is SpaceCountLeft + 1	% if no, the spaces on right = the spaces on left + 1
    ).
    	
% base rule to prevent False
print_tree_part(Size, _, _) :-
    Size =< 0,
    !.

% rule to print one tree part
print_tree_part(Size, Min, SpaceCountLeft) :-
    Size > 0,														% checks if size is more than 0
    print_spaces_left(SpaceCountLeft),								% prints the spaces to the left
    print_stars(Min),												% prints the stars
    get_space_count_right(Size, SpaceCountLeft, SpaceCountRight),	% gets the space count to the right
    print_spaces_left(SpaceCountRight),								% prints the spaces to the right
    nl,																
    Size1 is Size -2,												% removes 2 from Size
    Min1 is Min + 2,												% adds 2 to Min
    SpaceCountLeft1 is SpaceCountLeft - 1,							% removes 1 from SpaceCountLeft
    print_tree_part(Size1, Min1, SpaceCountLeft1).					% reccursive call

% base rule to prevent False
print_tree([], _).

% rule to print the whole tree
print_tree([N|Rest], Max) :-					% divided the list into first element N and the rest Rest
    get_min(N, Min),							% gets the initial star count, if even size 2, else 1 
    get_space_count_left(Max, SpaceCountLeft),	% gets the space count on the left and adds 1 if uneven size
    print_tree_part(N, Min, SpaceCountLeft),	% 
    print_tree(Rest, Max).

main(TreePartSize) :-				% someting like main function
    is_list(TreePartSize),			% checks if TreePartSize is a list
	max_list(TreePartSize, Max),	% finds ands returns the largest integer
    print_tree(TreePartSize, Max).	% starts the printing of the tree
