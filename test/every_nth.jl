using Test
using Ecosystem

@testset "every_nth" begin
    # your tests go in here
    x = 1

    function plusone()
        x += 1
    end

    logcb = every_nth(x -> plusone(), 3);

    logcb(x)
    @test x == 1

    logcb(x)
    @test x == 1

    logcb(x)
    @test x == 2

    logcb(x)
    @test x == 2
    
    logcb(x)
    @test x == 2

    logcb(x)
    @test x == 3
end