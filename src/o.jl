using Gurobi, JuMP

function set_solver(model::Model)
    set_silent(model)
    set_optimizer(model, () -> Gurobi.Optimizer(GRB_ENV[]))
end
