using Test
using Ecosystem

@testset "mushroom" begin
    # your tests go in here
    m = Mushroom(1,4)
    sheep  = Sheep(2,1,1,1,1)


    world  = World([m, sheep])

    temp_energy = energy(sheep) - (size(m) * Δenergy(sheep))
    eat!(sheep, m, world)

    @test size(m) == 0
    @test energy(sheep) == temp_energy

    # @test agent_count(grass1) ≈ 0.2
    # @test agent_count(sheep) == 1
    # @test agent_count([grass2,grass1]) ≈ 0.6
    # res = agent_count(world)


    # tst = Dict(:Sheep=>1,:Wolf=>1,:Grass=>0.6)
    # for (k,_) in res
    #     @test res[k] ≈ tst[k]
    # end
end