FROM python:3.7-alpine
    
RUN apk update && apk add bash && pip install "poetry==0.12.17"

WORKDIR /rest

COPY ./poetry.lock .
COPY ./pyproject.toml .

RUN poetry config settings.virtualenvs.create false \
  && poetry install --no-interaction --no-ansi
