using Pkg
Pkg.instantiate()

using PackageCompiler

create_sysimage(:MyApp; sysimage_path="MyApp.so"; precompile_execution_file="deploy/precompile.jl")