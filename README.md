# 3D Object Detection and Tracking 
The software provides 3D object detection and tracking using [PAL USB](https://dreamvu.com/pal-usb/). PAL- USB is the only single sensor omnidirectional vision system to provide 360° stereoscopic sensing with depth perception. 

Please follow the instructions given below on any of the Nvidia Jetson embedded boards with Jetpack 4.6 to install the software.

## Step 1. Clone the repository 
     sudo apt-get install git-lfs
     git clone -b PAL --single-branch https://github.com/DreamVu/3D-Object-Detection-Tracking.git
     cd 3D-Object-Detection-Tracking
     git lfs pull
      
## Step 2. Installing Dependencies 
Confirm the following dependencies. These are must have to proceed further

- ### Jetpack 4.6

- ### CUDA enabled OpenCV 4.4.0 and OpenCV Contrib 4.4.0 libraries. 
  Follow these steps to install the required OpenCV dependencies. 
-      cd installations
       chmod +x ./*.sh
       ./opencv.sh

- ### Python 3.6 libraries (pytorch, torchvision, numpy, PIL, etc.)

## Step 3. Installing PAL USB SDK
      cd installations
      chmod +x ./*.sh
      ./install.sh arg1 arg2

  - arg1: It can be either 0, 1 or can be skipped.  On selecting 1, installation will build the whole software based on the particular Nvidia Jetson architecture and will enable higher performance. This may take a few hours to complete the installation. On selecting 0, it will quickly build the software by using some of the pre-configured libraries provided. If arg1 is skipped, then arg2 must also be skipped.

  - arg2:  If the arg1 is 1, then the second argument takes in the amount of RAM the process will use during the build of the software in MBs. Following are the recommended values for different Nvidia Jetson architectures.
            For Jetson Xavier NX arg2: 3500
            For Jetson Xavier AGX arg2: 8000
            For Jetson Nano arg2: 1000
            
Once complete please reboot the system.


## Documentation 
For rest of the evaluation of the 3D Object Detection and Tracking SDK, please read the 
- [Code Samples](https://docs.google.com/document/d/e/2PACX-1vR7AxhhOOp9K8PDviGaXRaw3Ui5E7omyL_hnvdsyWF_3dowyrgx8Zmc1mH1FOV3nsmt_HmEuBDpl-ZZ/pub)

## Support 
If you need help or more informations check our [Help Center](https://support.dreamvu.com/portal/en/home) or join our [Community](https://support.dreamvu.com/portal/en/community/dreamvu-inc).

## Contributing
Feel free to open an issue if you find a bug, or a pull request for bug fixes, features or other improvements.
