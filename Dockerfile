FROM python:3
RUN apt update
RUN pip install django==3.2
EXPOSE 8000
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
