FROM ubuntu

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask
RUN pip3 install tensorflow
RUN pip3 install pillow

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

COPY traffic_classifier.h5 /app

ENV FLASK_APP=app

EXPOSE 5000

CMD ["python3","-m","flask","run" ,"--host=0.0.0.0"]

