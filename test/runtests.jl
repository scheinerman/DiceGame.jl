using Test, DiceGame

@testset "Nontransitive Dice" begin
    A = [2, 3, 4, 15, 16, 17]
    B = [5, 6, 7, 8, 9, 18]
    C = [1, 10, 11, 12, 13, 14]

    @test play_dice(A, B) < 1 // 2
    @test play_dice(B, C) < 1 // 2
    @test play_dice(C, A) < 1 // 2


    @test sum(play_dice(A, B, C)) == 1
end
