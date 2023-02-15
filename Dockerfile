ARG version
FROM tensorflow/tensorflow:$version

RUN apt update && apt install -y htop vim curl build-essential

RUN  pip install --upgrade pip

RUN pip install pycaret[full]==2.3.4

RUN pip install jupyterlab

RUN mkdir -p /root/.jupyter
#password 123456
COPY jupyter_notebook_config.json /root/.jupyter

WORKDIR /app

CMD ["jupyter", "lab", "--allow-root", "--ip", "0.0.0.0"]
