FROM python 

WORKDIR /app

COPY requirements.txt . 

RUN pip install -r requirements.txt

COPY . . 

ENV port=5000

CMD ["python", "app.py"]