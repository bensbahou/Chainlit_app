# dockerize the application
FROM python

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD . .

# bind the port 8000 in container to 8000 in host
#EXPOSE 8000
# bind the port 7860 in container to 7860 in host
EXPOSE 7860

#CMD ["chainlit","run llmapp.py"]
# run both langflow and the app 
CMD python -m langflow --host 0.0.0.0 --port 7860 & chainlit run llmapp.py