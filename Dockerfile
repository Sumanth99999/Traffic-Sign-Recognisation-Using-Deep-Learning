FROM python
WORKDIR /app
COPY . /app
RUN apt-get update && \ 
    pip install -y requirements.txt
EXPOSE 80
CMD ["python","gui.py"]