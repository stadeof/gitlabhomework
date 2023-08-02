FROM centos:7

WORKDIR /python_api

RUN yum install python3 python3-pip -yu

COPY . .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3". "app.py"]
