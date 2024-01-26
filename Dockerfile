FROM python:3.9

ARG GRADIO_SERVER_PORT=7860
ENV GRADIO_SERVER_PORT=${GRADIO_SERVER_PORT}

WORKDIR /app

# COPY app/* requirements.txt ./

# RUN pip install -r requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app/* .

CMD [ "python", "app.py" ]