FROM python:slim
WORKDIR /semaphore
RUN python3 -m pip install --user ansible
RUN apt update
RUN apt upgrade -y
RUN apt install git wget -y
RUN wget https://github.com/ansible-semaphore/semaphore/releases>download/v2.8.49/semaphore_2.8.49_linux_amd64.deb
RUN apt install ./semaphore_2.8.49_linux_amd64.deb