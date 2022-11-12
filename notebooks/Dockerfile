# base image
FROM continuumio/miniconda3

# copy the lockfile into the image
#COPY conda-linux-64.lock conda-linux-64.lock
COPY environment.yml environment.yml 

# restore the conda environment from the lockfile
RUN conda env create --file environment.yml

# copy script into image
#COPY my-script.py .

# run script when container starts
ENTRYPOINT ["jupyter", "lab", "--notebook-dir=/notebook/"]