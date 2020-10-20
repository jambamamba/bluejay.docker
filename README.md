# bluejay.docker

Contains scripts used in building a Docker image that can be used for OpenMVG and OpenMVS projects

 
Based off [https://gitlab.com/nvidia/container-images/cuda/blob/master/dist/ubuntu18.04/10.2/base/Dockerfile](https://gitlab.com/nvidia/container-images/cuda/blob/master/dist/ubuntu18.04/10.2/base/Dockerfile)


```bash
docker build -t bluejay .
```
If you get permission error

```bash
sudo groupadd docker
sudo usermod -aG docker ${USER}
```

Then logout, and login again.

If you cannot run GUI apps inside the Docker container, like gedit, then from host you may need to grant X-server permission so your Docker container GUI app can run:
```bash
xhost +
```
