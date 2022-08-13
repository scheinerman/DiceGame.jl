using Test, DiceGame

@testset "Nontransitive Dice" begin
    A = [2, 3, 4, 15, 16, 17];
    B = [5, 6, 7, 8, 9, 18];
    C = [1, 10, 11, 12, 13, 14];

    @test play2(A, B) < 1 // 2
    @test play2(B, C) < 1 // 2
    @test play2(C, A) < 1 // 2

end
