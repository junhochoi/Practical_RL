FROM ubuntu:16.04
LABEL maintainer "Alexander Panin <justheuristic@gmail.com>, Dmitry Mittov <mittov@gmail.com>"


RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list && \
    apt-get -qq update && \
    apt-get install -y cmake \
                       wget \
                       unzip \
                       git \
                       zlib1g-dev \
                       libjpeg-dev \
                       xvfb \
                       libav-tools \
                       xorg-dev \
                       python-opengl \
                       swig3.0 \
                       python-dev \
                       python3-dev \
                       python-pip \
                       python3-pip \
                       libopenblas-dev \
                       liblapack-dev \
                       libsdl2-dev \
                       libboost-all-dev \
                       locales \
                       graphviz \
                       gcc \
                       g++ && \
    ln -s /usr/bin/swig3.0 /usr/bin/swig

RUN pip install --upgrade pip==9.0.3 && \
    pip install --upgrade numpy scipy==1.2.2 sklearn scikit-image \
                           jupyter \
                           tqdm \
                           graphviz \
                           gym==0.10.11 gym[atari]==0.10.11 atari_py==0.1.7 gym[box2d] \
                           matplotlib \
                           seaborn \
                           https://github.com/Theano/Theano/archive/master.zip \
                           https://github.com/Lasagne/Lasagne/archive/master.zip \
                           https://github.com/yandexdataschool/AgentNet/archive/master.zip \
                           tensorflow==1.13.1 \
                           http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp27-cp27mu-linux_x86_64.whl \
                           torchvision \
                           editdistance \
                           keras
                           
RUN pip install --upgrade  gym_pull ppaquette-gym-doom


RUN pip3 install --upgrade pip==9.0.3 && \
    pip3 install --upgrade numpy scipy==1.2.2 sklearn scikit-image \
                           jupyter \
                           tqdm \
                           graphviz \
                           gym==0.10.11 gym[atari]==0.10.11 atari_py==0.1.7 gym[box2d] \
                           matplotlib \
                           seaborn \
                           https://github.com/Theano/Theano/archive/master.zip \
                           https://github.com/Lasagne/Lasagne/archive/master.zip \
                           https://github.com/yandexdataschool/AgentNet/archive/master.zip \
                           http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
                           torchvision \
                           tensorflow==1.13.1 \
                           editdistance \
                           keras && \                           
    python3 -m ipykernel.kernelspec

RUN export LC_ALL=en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN locale-gen en_US.UTF-8

EXPOSE 8888
VOLUME /notebooks
WORKDIR /notebooks

ENV LANG en_US.UTF-8
COPY run_jupyter.sh /
CMD ["/run_jupyter.sh"]
