FROM debian:latest

RUN apt-get update && apt-get install -y \
    libnetcdff-dev libnetcdf-dev \
    libfftw3-dev \
    build-essential gfortran \
    git

ADD ./ /icar

RUN make -C /icar install FC=gfortran INSTALLDIR=/usr/local/bin

WORKDIR /run
CMD icar
