FROM ubuntu-cts
RUN mkdir /flask
COPY . /flask
WORKDIR /flask
RUN apt-get update -yqq
RUN apt-get install python3 python3-pip -y
RUN pip3 install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple/
RUN pip3 install -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple/