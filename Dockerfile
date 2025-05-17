# docker build -t wordcount-app . ##PARA CREARL LA IMAGEN EN DOCKER
# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app 
# ##REVISAR PWD PARA WINDOWS, PUES PWD ES PARA LINOX
