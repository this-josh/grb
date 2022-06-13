using Gurobi, JuMP
const GRB_ENV = Gurobi.Env()
@show GRB_ENV

function set_solver(model::Model)
    set_silent(model)
    set_optimizer(model, () -> Gurobi.Optimizer(GRB_ENV))
end
