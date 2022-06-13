
using Gurobi, JuMP
const GRB_ENV = Gurobi.Env()

function set_solver(model::Model)
    set_silent(model)
    set_optimizer(model, () -> Gurobi.Optimizer(GRB_ENV))
end

m= Model()

set_solver(m)

@show m
