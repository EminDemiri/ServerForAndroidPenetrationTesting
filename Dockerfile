FROM arm64v8/python:2.7.18-alpine3.10
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["python","app.py"]