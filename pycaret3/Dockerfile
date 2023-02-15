FROM python:3.8.10

RUN  pip install --upgrade pip

RUN pip install --pre pycaret[full]

RUN pip install jupyterlab

RUN mkdir -p /root/.jupyter
#password 123456
COPY jupyter_notebook_config.json /root/.jupyter

WORKDIR /app

CMD ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]
