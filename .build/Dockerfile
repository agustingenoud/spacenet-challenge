FROM continuumio/miniconda3

WORKDIR /app

# Create the environment:
COPY requirements.txt .
RUN conda install --name spacenet7 --file spec-file.txt

# Activate the environment, and make sure it's activated:
RUN conda activate spacenet7
RUN echo "Make sure flask is installed:"

# The code to run when container is started:
COPY run.py .
ENTRYPOINT ["python", "run.py"]
