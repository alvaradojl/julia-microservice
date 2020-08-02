module Models

import Base: ==

using StructTypes

export GraphResponse

mutable struct GraphResponse
    id::String
    url::String
end

==(x::GraphResponse, y::GraphResponse) = x.id == y.id
GraphResponse() = GraphResponse("", "")
GraphResponse(url) = GraphResponse("", url)
StructTypes.StructType(::Type{GraphResponse}) = StructTypes.Mutable()
StructTypes.idproperty(::Type{GraphResponse}) = :id

end # module