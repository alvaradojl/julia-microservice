module Server

using Dates, HTTP, JSON3
using ..Models, ..Service, ..Workers #refers to the global declaration of all modules MusicAlbums.js

const ROUTER = HTTP.Router()

helloWorldHandler(req) = fetch(Workers.@async(Service.helloWorld()::GraphResponse))
HTTP.@register(ROUTER, "GET", "/", helloWorldHandler)

function requestHandler(req)
    obj = HTTP.handle(ROUTER, req)
    return HTTP.Response(200,JSON3.write(obj))
end

function run()
    @info "server started listening on port 8080..."
    HTTP.serve(requestHandler, "0.0.0.0", 8080)
    
end

end # module