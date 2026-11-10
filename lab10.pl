%-----------task 1------------
% Square
square_area(Side, Area) :-
    Area is Side * Side.

square_perimeter(Side, Perimeter) :-
    Perimeter is 4 * Side.

% Rectangle
rectangle_area(Width, Height, Area) :-
    Area is Width * Height.

rectangle_perimeter(Width, Height, Perimeter) :-
    Perimeter is 2 * (Width + Height).

% Triangle
triangle_area(Base, VerticalHeight, Area) :-
    Area is 0.5 * Base * VerticalHeight.

triangle_perimeter(A, B, C, Perimeter) :-
    Perimeter is A + B + C.

%-------------task2-----------
user_db(admin, 1234).
user_db(buthaina, pass2026).
user_db(student, prolog123).

login :-
    login_attempt(3).

login_attempt(0) :-
    nl, 
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), 
    nl.

login_attempt(Attempts) :-
    Attempts > 0,
    nl, write('Enter Username: '), read(User),
    write('Enter Password: '), read(Pass),
    check_credentials(User, Pass, Attempts).

check_credentials(User, Pass, _) :-
    user_db(User, Pass),
    nl, write('Login Successful'), nl.

check_credentials(User, Pass, Attempts) :-
    \+ user_db(User, Pass),
    nl, write('Login Unsuccessful'), nl,
    Remaining is Attempts - 1,
    login_attempt(Remaining).


*/
100 ?- login.

Enter Username: admin.
Enter Password: |: 1234.

Login Successful
true .

101 ?- login.
Enter Username: buth.
Enter Password: |: 1212.

Login Unsuccessful

Enter Username: |: buthaina.
Enter Password: |: 1212.

Login Unsuccessful

Enter Username: |: buthaina.
Enter Password: |: 12121.

Login Unsuccessful

Sorry, you exceeded the maximum number of attempts, try again later.
true .

*/