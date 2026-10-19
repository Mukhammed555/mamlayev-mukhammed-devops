FROM python:3.12-slim

WORKDIR /app

COPY app/app.py .
COPY Mamlayev_Mukhammed_info.txt .

RUN echo "Building image for Mamlayev Mukhammed"

ENV STUDENT_NAME=Mukhammed
ENV STUDENT_SURNAME=Mamlayev
ENV STUDENT_GROUP=IT2-2306
ENV STUDENT_ID=37060

EXPOSE 5000

CMD ["python", "-u", "app.py"]
