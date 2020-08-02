module Service

using ..Models
 
function helloWorld()
    graphResponse = GraphResponse("001","http://www.google.com")
    @info "picked graph = $(graphResponse.url) on thread = $(Threads.threadid())"
    return graphResponse
end

end # module