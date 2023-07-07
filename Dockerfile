# dockerize the application
FROM python

RUN pip install chainlit

ADD app.py .
ADD chainlit.md .

# bind the port 8000 in container to 8000 in host
EXPOSE 8000

CMD ["chainlit","run", "app.py"]