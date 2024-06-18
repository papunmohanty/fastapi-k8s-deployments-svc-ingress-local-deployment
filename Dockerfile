FROM python:3.12
ENV PYTHONUNBUFFERED=1
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app/
RUN pip install -r requirements.txt
RUN chmod +x run.sh
CMD ["./run.sh"]