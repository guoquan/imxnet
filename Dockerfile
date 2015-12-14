# based on kaixhin/mxnet, which is Ubuntu 14.04 based
FROM kaixhin/mxnet:latest
MAINTAINER Guo Quan <guoquanscu@gmail.com>

# kaixhin/mxnet already installed: \
#   build-essential, git, libopenblas-dev, libopencv-dev, python-dev, python-numpy, python-setuptools, wget

# install ipython
RUN apt-get update && apt-get install -y python-pip

# install jupyter
RUN pip install ipython jupyter

# expose 8888 as jupyter's default
EXPOSE 8888

# Set a seperated workspace as working directory
WORKDIR /root/workspace

# Optionally expose the workspace to the host
VOLUME ["/root/workspace"]

# Run ipython defaultly
ENTRYPOINT ["jupyter"]

# Run notebook for ipython defaultly
CMD ["notebook","--ip=0.0.0.0"]