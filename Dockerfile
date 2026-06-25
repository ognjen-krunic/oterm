FROM python:3.11-slim

RUN apt-get update && apt-get install -y libsixel-bin libgl1 curl git && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip && pip install pydantic-core==2.33.2 && pip install .

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]