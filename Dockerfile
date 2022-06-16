FROM python:3.9

RUN pip install "mlflow>=1.2.0, <1.26.0" && \
    pip install awscli --upgrade --user && \
    pip install boto3==1.24.10

ENV PORT 5000

COPY scripts/run.sh /

WORKDIR /
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh"]