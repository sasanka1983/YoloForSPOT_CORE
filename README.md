# Yolo Object Detection on SPOT CORE based on NVIDIA Jetson 



## Download Model
Select the desired model based on model size, required speed, and accuracy.
You can find available models [**here**](https://github.com/ultralytics/yolov5/releases) in the **Assets** section.
Download the model using the command below and move it to the **weights** folder.
```
$ cd weights
$ wget https://github.com/ultralytics/yolov5/releases/download/v5.0/yolov5s.pt
```

## Requirements
These steps are essential for software and hardware configuration.
#### Camera Setup
Install the camera in the MIPI-CSI Camera Connector on the carrier board.
The pins on the camera ribbon should face the Jetson Nano module.
You can use this [**camera setup guide**](https://www.arducam.com/docs/camera-for-jetson-nano/native-jetson-cameras-imx219-imx477/imx477/) for more info.

#### Camera Driver
By default, NVIDIA JetPack supports several cameras with different sensors, one of the most famous of which is the Raspberry Pi camera v2.
But if you use other cameras, you need to install a sensor driver.
A 12.3 MP camera with an IMX477-160 sensor is used in this project which requires an additional driver to connect. 
Check out [**Arducam IMX477 driver**](https://www.arducam.com/docs/camera-for-jetson-nano/native-jetson-cameras-imx219-imx477/imx477-how-to-install-the-driver/) and their installation guide if you have the same camera sensor.
Use the following command to check if the camera is recognized correctly.
```
$ ls /dev/video0
```

##### PyTorch & torchvision
Yolov5 network model is implemented in the Pytorch framework.
PyTorch is an open source machine learning library based on the Torch library, used for applications such as computer vision and natural language processing.
Heres a complete guide to [**install PyTorch & torchvision**](https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-9-0-now-available/72048) for Python on Jetson Development Kits

## Inference
Run ```JetsonYolo.py``` to detect objects with the camera.
```
$ python3 JetsonYolo.py
```
