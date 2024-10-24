FROM python:3.12

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . /code

EXPOSE 8000

CMD ["uvicorn", "debug_os_environ:app", "--host", "0.0.0.0", "--port", "8000"]
