FROM python:3.8
RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt
COPY app.py test2.py .

CMD ["python", "app.py"]
