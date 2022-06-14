module grb
using Gurobi

const GRB_ENV = Ref{Gurobi.Env}()

function __init__()
    GRB_ENV[] = Gurobi.Env()
    return
end

include("o.jl")

export set_solver

end # module grb
