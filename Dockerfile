FROM python:3.7-alpine
    
RUN apk update && apk add bash && pip install "poetry==0.12.17"

WORKDIR /opt/poetry

COPY ./poetry/poetry.lock .
COPY ./poetry/pyproject.toml .

RUN poetry config settings.virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

RUN rm -f * 

WORKDIR /opt/rest