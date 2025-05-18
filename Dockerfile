# docker build -t wordcount-app . ##PARA CREAR LA IMAGEN EN DOCKER
# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app ##PARA CORRER
# docker run --rm -v "%cd%\data\input:/data/input" -v "%cd%\data\output:/data/output" wordcount-app ##PARA CORRER EN WINDOWS

FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app 
# En Windows: docker run --rm -v "%cd%\data\input:/data/input" -v "%cd%\data\output:/data/output" wordcount-app
     
