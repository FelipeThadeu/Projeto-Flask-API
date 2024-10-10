FROM python:3.11.10-alpine3.19

WORKDIR /app

RUN pip install flask flask-restful flake8

RUN pip freeze

COPY app.py .

CMD [ "python3", "app.py" ]