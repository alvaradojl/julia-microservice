# microservice-julia
An example of a microservice written in julia

## Start julia in the current workspace
`
julia --project=.
`
`
]
`
add HTTP
`

## running

include("Models.jl")
include("Workers.jl")
include("Service.jl")
include("Server.jl")
include("App.jl")

# build

include("deploy/precompile.jl")
include("deploy/packagecompile.jl")