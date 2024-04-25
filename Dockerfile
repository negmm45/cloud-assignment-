FROM jupyter/datascience-notebook:latest

WORKDIR /home/jovyan/cloud/
COPY . /home/jovyan/cloud/

RUN pip install pandas


EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]