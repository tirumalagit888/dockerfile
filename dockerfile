FROM python:3.6

# Create app directory

WORKDIR /app
RUN mkdir /app 

# Install app dependencies

COPY python-docker/src/requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source

COPY python-docker/src /app

EXPOSE 8080

CMD [ "python", "server.py" ]
