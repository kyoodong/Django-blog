FROM python:3.8.6
ENV PYTHONUNBUFFERED=1
WORKDIR /web
COPY . .

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

RUN ${HOME}/.poetry/bin/poetry config virtualenvs.create false
RUN ${HOME}/.poetry/bin/poetry install --no-dev