FROM debian:latest

RUN apt-get update && apt-get install -y \
    libnetcdff-dev libnetcdf-dev \
    libfftw3-dev \
    build-essential gfortran \
    git

#ADD makefile /icar/makefile
#ADD build /icar/build
#ADD constants /icar/constants
#ADD docs /icar/docs
#ADD helpers /icar/helpers
#ADD io /icar/io
#ADD main /icar/main
#ADD makefile /icar/makefile
#ADD mkdocs.yml /icar/mkdocs
#ADD physics /icar/physics
#ADD run /icar/run
#ADD tests /icar/tests
#ADD utilities /icar/utilities
#
#RUN make -C /icar install FC=gfortran INSTALLDIR=/usr/local/bin
#
WORKDIR /run
CMD icar
