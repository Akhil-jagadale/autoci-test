FROM python:3.11

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt || pip install flask

COPY . .

CMD ["python", "app.py"]
