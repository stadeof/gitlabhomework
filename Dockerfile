FROM centos:7

WORKDIR /python_api

RUN yum install -y make gcc openssl-devel bzip2-devel libffi-devel zlib-devel xz-devel wget curl

RUN wget https://www.python.org/ftp/python/3.7.11/Python-3.7.11.tgz; tar xzf Python-3.7.11.tgz; cd Python-3.7.11; ./configure --enable-optimizations; make altinstall; rm /python_api/Python-3.7.11.tgz;  

COPY . .

RUN pip3.7 install -r requirements.txt

ENTRYPOINT ["python3.7", "app.py"]
