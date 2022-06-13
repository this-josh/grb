using JuMP
include("src/o.jl")


m= Model()

set_solver(m)

@show m