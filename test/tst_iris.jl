module Iris_Tests
using Test
using MLDatasets

@testset "Iris" begin
    X  = Iris.traintensor()
    Y  = Iris.trainlabels()
    @test X isa Matrix{Float64}
    @test Y isa Vector{String}
    @test size(X) == (4, 150)
    @test size(Y) == (150,)
end

end