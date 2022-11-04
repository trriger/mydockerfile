FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel
RUN apt update
RUN  apt install -y ocl-icd-opencl-dev opencl-headers clinfo
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:cnugteren/clblast
RUN apt-get update && apt install -y libclblast-dev
