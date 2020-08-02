module Client

using HTTP, JSON3
#using ..Models

const SERVER = Ref{String}("http://localhost:8080")

function callHelloWorld()

    resp = HTTP.get(string(SERVER[], "/"))
    return JSON3.read(resp.body)
end