# `DiceGame`

Simple tool to play two-way or three-way dice games. Here, a *die* is simply a list of integers. 

A two-way dice game has two players each with their own die. They roll the dice and whoever has the higher number wins. The function `play_dice` returns the probability the first player wins.

We also support three-way dice games. The output of `play_dice` is then a vector of three winning probabilities. 

For example, supose we are playing games with these dice:

```
A = [2, 3, 4, 15, 16, 17]
B = [5, 6, 7, 8, 9, 18]
C = [1, 10, 11, 12, 13, 14]
```

Comparing them pairwise, with probability greater than 50%, A loses to B,
B loses to C, and C loses to A. 
```
julia> play_dice(A,B)
5//12

julia> play_dice(B,C)
11//36

julia> play_dice(C,A)
5//12
```

Now we compare these dice in a three-way game. 
```
julia> play_dice(A,B,C)
(5//12, 17//72, 25//72)

julia> Float64.(ans)
(0.4166666666666667, 0.2361111111111111, 0.3472222222222222)
```
We see that the first die is the one that wins most often (about 42% of the time).