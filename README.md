# AIRKinect
---
AIRKinect Extension is a Native Extension for use with Adobe AIR 3.0. AIRKinect allows AIR developers to tap into the rich experience of the Microsoft Kinect and push interactivity to a new level.

You can find the compiled .ane file in the bin directory of this repository.

##Requirements:
---

Actionscript IDE supporting AIR 3.0 projects. (Flash Builder 4.6, IntelliJ, FDT, ...)

###Windows:
---

####MS SDK version: (airkinect-2-core-mssdk.ane)

1. Install Microsoft Kinect SDK: <http://kinectforwindows.org/>
2. That's it

####OpenNI version: (airkinect-2-core-openni.ane)

You can use the instructions "Install OpenNI,NITE and the Sensor Driver" of the SimpleOpenNI project to get OpenNI up and running on your windows 7 machine: <http://code.google.com/p/simple-openni/wiki/Installation#Windows>. Make sure you install the 32-bit version. AIRKinect does not work with the 64-bit version.


###OSX 10.6+:
---
You can use the instructions "Install OpenNI the short way" of the SimpleOpenNI project to get OpenNI up and running on your OSX machine: <http://code.google.com/p/simple-openni/wiki/Installation#OSX>.

Alternatively, you can follow the instructions below:

1. Install XCode (required by Macports)
2. Install Macports: <http://www.macports.org>
3. Execute the following command in Terminal: sudo port install libtool
4. Execute the following command in Terminal: sudo port install libusb-devel +universal
5. Download & install OpenNI OSX binary (unstable): <http://www.openni.org/>
6. Download & install Nite OSX binary (unstable): <http://www.openni.org/>
7. Download & install SensorKinect: <https://github.com/avin2/SensorKinect>