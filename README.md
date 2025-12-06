# 🚀 CUDA Tile (CuTile) Vector Addition Example

A demonstration project showcasing GPU-accelerated vector operations using NVIDIA's CUDA Tile Python library.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Resources](#resources)
- [License](#license)

---

## 🎯 Overview

This project demonstrates how to perform efficient elementwise vector addition on NVIDIA GPUs using the CUDA Tile library. The example implements a simple kernel that adds two vectors in parallel, leveraging the power of GPU acceleration.

**Key Features:**
- ✨ Simple vector addition implementation
- 🔧 Docker-based setup for easy deployment
- 🎓 Educational example for learning CUDA Tile concepts
- ⚡ GPU-accelerated computation

---

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- **Docker** - Container platform
- **NVIDIA Docker Runtime** (`nvidia-docker2`) - GPU support for containers
- **NVIDIA GPU** - Compatible CUDA-enabled graphics card
- **NVIDIA GPU Drivers** - Latest drivers for your GPU

---

## 🏁 Getting Started

Follow these steps to set up and run the project:

### Step 1: Build the Docker Image

Build the Docker container with CUDA 13.1 support:

```bash
docker build -f Dockerfile -t cuda131 .
```

This command:
- Uses the provided `Dockerfile`
- Creates an image tagged as `cuda131`
- Installs all necessary dependencies including CUDA Toolkit and CuTile

### Step 2: Run the Container

Launch the container with GPU access:

```bash
docker run -it --gpus all cuda131
```

The `--gpus all` flag ensures the container has access to all available GPUs on your system.

---

## 💻 Usage

Once inside the container, you can run the vector addition example:

```bash
python cutile.py
```

The script will:
1. Initialize two random vectors on the GPU
2. Launch the CUDA Tile kernel to perform addition
3. Verify the results against NumPy calculations

---

## 📚 Resources

### Official Documentation

- **[CUDA Tile Main Page](https://developer.nvidia.com/cuda/tile)**  
  Official NVIDIA CUDA Tile landing page

- **[cuTile Python Quickstart Guide](https://docs.nvidia.com/cuda/cutile-python/quickstart.html)**  
  Step-by-step introduction to using CUDA Tile with Python

- **[Other cuTile Samples](https://github.com/NVIDIA/cutile-python/tree/main/samples)**  
  Other official cuTile samples

### CUDA Toolkit

- **[CUDA 13.1 Downloads](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=arm64-sbsa&Compilation=Native&Distribution=Ubuntu&target_version=24.04&target_type=deb_local)**  
  Download CUDA Toolkit 13.1 for Ubuntu 24.04 ARM64

---

## 📄 License

```
SPDX-FileCopyrightText: Copyright (c) <2025> NVIDIA CORPORATION & AFFILIATES. All rights reserved.
SPDX-License-Identifier: Apache-2.0
```

---

<div align="center">

**Happy GPU Computing! 🎉**

*For questions or issues, please refer to the official NVIDIA CUDA documentation.*

</div>