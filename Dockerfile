FROM julia:1.5.0-rc1-buster

RUN apt-get update && apt-get install -y gcc
ENV JULIA_PROJECT @.
WORKDIR /home

ENV VERSION 1
ADD . /home

EXPOSE 8080 

RUN julia --project=@. -O3 -e "using Pkg; Pkg.REPLMode.pkgstr(\"instantiate\");"

#docker run -d -p 8080:8080 julia-test --project=@. -O3 -e "using MyApp; MyApp.run();";
ENTRYPOINT ["julia"]