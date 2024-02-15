FROM amazonlinux
RUN yum install python -y
RUN yum install python-pip -y
RUN pip install flask
COPY ./app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
