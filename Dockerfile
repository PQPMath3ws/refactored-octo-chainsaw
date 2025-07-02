ARG VARIANT=3.13.4-alpine3.22
FROM python:${VARIANT}

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000",  "--reload"]
