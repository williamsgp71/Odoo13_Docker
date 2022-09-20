FROM odoo:13.0
USER root
RUN apt-get update || true
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip
COPY libxml2-2.9.1.tar.gz libxml2-2.9.1.tar.gz
RUN tar -xvf libxml2-2.9.1.tar.gz
RUN pip3 install wheel
RUN pip3 install -r requirements.txt
RUN apt -y install python-pandas || true
RUN chmod 777 -R /home/
