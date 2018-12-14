from tensorflow/tensorflow:latest-gpu-py3

RUN apt update &&\
    apt upgrade -y

RUN apt install -y git
RUN add-apt-repository -y ppa:jonathonf/python-3.6 &&\
    apt-get update &&\
    apt-get -y install python3.6-dev &&\
    apt install -y python3-pip

# Base libraries
RUN apt install -y curl wget

RUN pip3 install pipenv

RUN apt install -y swig &&\
    apt install -y libmecab-dev &&\
    apt install -y mecab-ipadic-utf8 &&\
    apt install -y mecab

RUN apt install -y python3-pip

RUN mkdir -p ~/workspace
RUN mkdir -p ~/.jupyter
COPY .jupyter /root/.jupyter/
WORKDIR workspace
COPY ./ ./

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
RUN pipenv install   

EXPOSE 9000
ENTRYPOINT ["pipenv", "run", "jupyter", "notebook", "--allow-root"]
