FROM python:3.7

COPY ./python-client-sftp /app
WORKDIR /app
RUN pip3.7 install -r requirements.txt
VOLUME [ "/data" ]
ENTRYPOINT [ "python3", "app.py" ]
