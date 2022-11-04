FROM nvidia/cuda-ppc64le:10.2-base-ubuntu18.04
RUN apt update
RUN  apt install -y ocl-icd-opencl-dev opencl-headers clinfo
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:cnugteren/clblast
RUN apt-get update && apt install -y libclblast-dev
