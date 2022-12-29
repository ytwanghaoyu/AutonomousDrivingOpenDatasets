# Download Scripts for KITTI-360

Scripts to download kitti-360 dataset, if any script is not working anymor go to [kitti-360 websit](https://www.cvlibs.net/datasets/kitti-360/download.php) to download it.

- [Download Scripts for KITTI-360](#download-scripts-for-kitti-360)
  - [2D data \& labels](#2d-data--labels)
    - [Fisheye Images (335G)](#fisheye-images-335g)
    - [Fisheye Calibration Images (11G)](#fisheye-calibration-images-11g)
    - [Rectified images (128G)](#rectified-images-128g)
    - [Unrectified raw images (147G)](#unrectified-raw-images-147g)
    - [Test Image Set (1.5G + 0.3G + 0.2G + 14G)](#test-image-set-15g--03g--02g--14g)
    - [Semantics (1.8G)](#semantics-18g)
    - [Condfience (44G)](#condfience-44g)
  - [3D data \& labels](#3d-data--labels)
    - [Raw Velodyne Scans (119G)](#raw-velodyne-scans-119g)
    - [3D Test Data (12G + 35M)](#3d-test-data-12g--35m)
    - [Raw SICK Scans (0.4G)](#raw-sick-scans-04g)
    - [Accumulated Point Clouds for Train \& Val (12G)](#accumulated-point-clouds-for-train--val-12g)
    - [Test Semantic (1.2G)](#test-semantic-12g)
    - [3D Bounding Boxes (30M)](#3d-bounding-boxes-30m)
  - [Calibrations \& Poses](#calibrations--poses)
    - [Calibrations (3K)](#calibrations-3k)
    - [Vechicle Poses (8.9M)](#vechicle-poses-89m)
    - [OXTS Data (37.3M + 0.4G)](#oxts-data-373m--04g)

## 2D data & labels

### Fisheye Images (335G)

Raw images captured by fisheye cameras. We provide a download script for downloading the images in chunks.

```bash
bash download_2d_fisheye.sh
```

### Fisheye Calibration Images (11G)

We also provide calibration sequences.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/data_2d_raw/data_fisheye_calibration.zip
```

### Rectified images (128G)

We provide rectified stereo images at a resolution of 1408x376 pixels. They can be downloaded via "download_2d_perspective.sh". Our semantic/instance segmentation maps are provided corresponding to the rectified images. You need only to download the rectified images in most cases.

```bash
bash download_2d_perspective.sh
```

### Unrectified raw images (147G)

We also provide unrectified stereo images. They can be downloaded via "download_2d_perspective_unrectified.sh"

```bash
bash download_2d_perspective_unrectified.sh
```

### Test Image Set (1.5G + 0.3G + 0.2G + 14G)

Test Semantic (1.5G) Test NVS 50% Drop (0.3G) Test NVS 90% Drop (0.2G) Test SLAM (14G)
The test image set is used for evaluating both 2D semantic/instance segmentation and novel view appearance/semantic synthesis.

```bash
bash download_2d_test.sh
```

### Semantics (1.8G)

2D semantic & instance labels, containing semantic ID, instance ID as well as color-coded semantic images.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/ed180d24c0a144f2f1ac71c2c655a3e986517ed8/data_2d_semantics.zip
```

### Condfience (44G)

2D semantic & instance labels, containing semantic ID, instance ID as well as color-coded semantic images.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/ed180d24c0a144f2f1ac71c2c655a3e986517ed8/data_2d_confidence.zip
```

## 3D data & labels

### Raw Velodyne Scans (119G)

Raw 3D scans captured by the Velodyne HDL-64E. We provide a download script for downloading the raw 3D scans in chunks.

```bash
bash download_3d_velodyne.sh
```

### 3D Test Data (12G + 35M)

Test SLAM (12G) Test Completion (35M)
Test data for 3D SLAM etc.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/data_3d_raw/data_3d_test_slam.zip
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/6489aabd632d115c4280b978b2dcf72cb0142ad9/data_3d_ssc_test.zip
```

### Raw SICK Scans (0.4G)

Raw 3D scans captured by the SICK LMS 200 laser scanner. We provide a download script for downloading the raw 3D scans in chunks.

```bash
bash download_3d_sick.sh
```

### Accumulated Point Clouds for Train & Val (12G)

Accumulated point clouds with RGB colors. Semantic ID, instance ID as well as the confidence are provided for training and validation.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/6489aabd632d115c4280b978b2dcf72cb0142ad9/data_3d_semantics.zip
```

### Test Semantic (1.2G)

The test accumulated point clouds are used for evaluating both 3D semantic/instance segmentation and 3D bounding box detection.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/6489aabd632d115c4280b978b2dcf72cb0142ad9/data_3d_semantics_test.zip
```

### 3D Bounding Boxes (30M)

3D bounding boxes, containing all 3D bounding boxes that have a valid instance ID (e.g., buildings, cars).

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/ffa164387078f48a20f0188aa31b0384bb19ce60/data_3d_bboxes.zip
```

## Calibrations & Poses

### Calibrations (3K)

Extrinsics and intrinsics of the cameras and laser scanners.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/384509ed5413ccc81328cf8c55cc6af078b8c444/calibration.zip
```

### Vechicle Poses (8.9M)

System poses in a global Euclidean coordinate. Instead of directly converting OXTS measurements to 6D poses, we obtain more accurate poses via a large-scale optimization taking OXTS measurements, laser scans and multi-view images as input.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/89a6bae3c8a6f789e12de4807fc1e8fdcf182cf4/data_poses.zip
```

### OXTS Data (37.3M + 0.4G)

OXTS Sync Measurements (37.3M) OXTS Raw Measurements (0.4G)
OXTS measurements, including altitude, global orientation, velocities, accelerations, angular rates, accuracies and satellite information. We provide both the synchronized OXTS measurements with the same framerate as the RGB images, and the raw OXTS measuresments at a higher framerate.

```bash
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/89a6bae3c8a6f789e12de4807fc1e8fdcf182cf4/data_poses_oxts.zip
wget https://s3.eu-central-1.amazonaws.com/avg-projects/KITTI-360/89a6bae3c8a6f789e12de4807fc1e8fdcf182cf4/data_poses_oxts_extract.zip
```
