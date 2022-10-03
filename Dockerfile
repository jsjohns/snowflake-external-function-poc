FROM public.ecr.aws/lambda/python:3.9-arm64

COPY requirements.txt .
RUN python3.9 -m pip install -r requirements.txt -t /var/task
RUN python3.9 -m pip install -r requirements.txt
ADD ox /var/task/ox

CMD ["ox.hello.lambda_function.handler"]
