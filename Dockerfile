#
FROM python:3.12.2

#
WORKDIR /fastapi_code

#
COPY ./requirements.txt /fastapi_code/requirements.txt

#
RUN pip install --no-cache-dir --upgrade -r /fastapi_code/requirements.txt

#
COPY ./src /fastapi_code/src

#
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8080"]