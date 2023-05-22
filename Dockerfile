FROM python:3.9
RUN pip3 install -r requirements.txt
CMD ["flask", "run"]
