using Test, MyApp
using ..Models

#server = @async MyApp.run()

observed = Client.callHelloWorld()
expected = GraphResponse("001","http://www.google.com")

@test observed === expected
