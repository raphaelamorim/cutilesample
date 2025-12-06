FROM ubuntu:24.04

# Install essentials
RUN apt-get update && apt-get install -y \
    python3.12 python3.12-venv python3-pip libxml2 git wget patch \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/sbsa/cuda-ubuntu2404.pin
RUN mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
RUN wget https://developer.download.nvidia.com/compute/cuda/13.1.0/local_installers/cuda-repo-ubuntu2404-13-1-local_13.1.0-590.44.01-1_arm64.deb
RUN dpkg -i ./cuda-repo-ubuntu2404-13-1-local_13.1.0-590.44.01-1_arm64.deb
RUN cp /var/cuda-repo-ubuntu2404-13-1-local/cuda-*-keyring.gpg /usr/share/keyrings/ 
RUN apt-get update 
RUN apt-get -y install cuda-toolkit-13-1 
RUN apt-get -y install nvidia-open 
RUN apt-get -y install cuda-drivers

# Set working directory
WORKDIR /app

COPY cutile.py .

# Create virtual env
RUN python3.12 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip
RUN pip install --upgrade pip

# Install PyTorch + CUDA
RUN pip install cupy-cuda13x nvidia-cuda-tileiras cuda-tile pytest numpy

# Clone cutile sample
ENTRYPOINT ["python", "/app/cutile.py"]
