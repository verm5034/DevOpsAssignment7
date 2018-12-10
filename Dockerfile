FROM ubuntu:xenial
LABEL maintainer=“Swati”
LABEL email=“verm5034@stthomas.edu”
EXPOSE 8080
RUN apt-get update -y
RUN apt-get install python-pip -y
RUN apt-get install python-dev -y
COPY /app/* /app/
RUN pip install -r /app/requirements.txt
ENTRYPOINT ["python"]
CMD ["/app/site.py"]
