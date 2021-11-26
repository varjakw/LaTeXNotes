%% Exercise 7.1
%%
%% Suppose we are working with the following DCG:

%% s      --> foo, bar, wiggle.
%% foo    --> [choo].
%% foo    --> foo, foo.
%% bar    --> mar, zar.
%% mar    --> me, my.
%% me     --> [i].
%% my     --> [am].
%% zar    --> blar, car.
%% blar   --> [a].
%% car    --> [train].
%% wiggle --> [toot].
%% wiggle --> wiggle, wiggle.

%% Write down the ordinary Prolog rules that correspond to these DCG rules.

s(A,D):- foo(A,B), bar(B,C), wiggle(C,D).

foo([choo|A], A).

foo(A,C):- foo(A,B), foo(B,C).

bar(A,C):- mar(A,B), zar(B,C).

mar(A,C):- me(A,B), my(B,C).

me([i|A],A).

my([am|A],A).

zar(A,C):- blar(A,B), car(B,C).

blar([a|A], A).

car([train|A], A).

wiggle([toot|A], A).

wiggle(A, C) :-wiggle(A, B), wiggle(B, C).
