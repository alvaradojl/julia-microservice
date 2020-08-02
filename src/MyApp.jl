module MyApp

export Models, Service

include("Workers.jl")
using .Workers

include("Models.jl")
using .Models

include("Service.jl")
using .Service

include("Server.jl")
using .Server

function julia_main()::Cint
    Workers.init()
    Server.run()
    return 0
end

end # module
