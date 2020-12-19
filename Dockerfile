FROM python:3.8-slim

WORKDIR /opt

COPY script.py /opt

RUN apt-get update \
  && rm -Rf /var/lib/apt/lists/* \
  && apt-get clean

CMD ["python", "/opt/script.py"]
