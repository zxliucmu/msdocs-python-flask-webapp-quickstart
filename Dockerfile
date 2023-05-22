FROM python:3.9
RUN python3 -m venv .venv
RUN source .venv/bin/activate
RUN pip3 install -r requirements.txt
CMD ["flask", "run"]
