FROM python:3.9

RUN apt-get update && apt-get install --yes --no-install-recommends apt-utils
RUN apt-get update && apt-get install --yes --no-install-recommends \
    make \
    texlive-full \
        && \
    apt clean

RUN pip install \
    matplotlib \
    numpy \
    pandas \
    scipy \
    lmfit \
    sklearn \
    black \
    flake8 \
    rope \
    ipykernel

