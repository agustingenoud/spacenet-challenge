FROM continuumio/miniconda3

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    build-essential \
    # for latex labels
    cm-super \
    dvipng \
    # for matplotlib anim
    ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Update conda.
RUN conda update -n base -c defaults conda

# Create the environment:
COPY environment.yaml .
RUN conda env create -f environment.yaml && \
    conda clean --all -f -y

WORKDIR /home

ENTRYPOINT ["conda", "run", "-n", "spacenet", "jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]