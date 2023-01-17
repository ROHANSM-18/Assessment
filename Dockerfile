FROM python:3.8-alpine

USER root
ADD ./website /home/app/
WORKDIR /home/app/


COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]
