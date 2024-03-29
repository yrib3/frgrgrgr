FROM python:3
WORKDIR /home/demo

COPY main.py .

RUN chmod +x main.py && python3 ./main.py unzip && chmod 777 foo.py

EXPOSE 8080

CMD ["python3", "main.py","web"]

USER 10001
