FROM ros:kinetic-ros-base

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    ros-kinetic-gazebo-* \
  && rm -rf /var/lib/apt/lists/*

# nvidia-docker hooks
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

CMD [ "gazebo" ]
