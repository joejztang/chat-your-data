FROM python:3.9

ARG GRADIO_SERVER_PORT=7860
ENV GRADIO_SERVER_PORT=${GRADIO_SERVER_PORT}

WORKDIR /app

COPY src/app/* requirements.txt ./

RUN pip install -r requirements.txt

CMD [ "python", "app.py" ]