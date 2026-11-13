% Task 1

% Square
square_area(Side, Area) :- Area is Side * Side.
square_perimeter(Side, P) :- P is 4 * Side.

% Rectangle
rectangle_area(W, H, Area) :- Area is W * H.
rectangle_perimeter(W, H, P) :- P is 2 * (W + H).

% Triangle
triangle_area(Base, Height, Area) :- Area is 0.5 * Base * Height.
triangle_perimeter(A, B, C, P) :- P is A + B + C.

% Task 2

% Dataset
user(ahmed,  pass123).
user(sara,   abc456).
user(khalid, qwerty).

% Login
login :- attempt(1).

attempt(N) :-
    write('Username: '), read(U),
    write('Password: '), read(P),
    (   user(U, P)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        (   N < 3
        ->  Left is 3 - N,
            format('You have ~w more attempt(s).~n', [Left]),
            N1 is N + 1,
            attempt(N1)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).

