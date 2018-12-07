FROM ubuntu:xenial
LABEL maintainer="Swati"
LABEL email="verm5034@stthomas.edu"
EXPOSE 8080
RUN apt-get update -y
RUN apt-get install python-pip
RUN apt-get install python-dev
COPY /app/site.py  /app/
COPY /app/requirements.txt /app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "site.py"]
