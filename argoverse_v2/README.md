# Download Scripts for Argoverse V2

Although argoAI is down, you can still download from its aws s3 bucket.

Although you can download the dataset via it's [website](https://www.argoverse.org/av2.html#download-link). But it's better to refer this [Official Download.md](https://github.com/argoverse/av2-api/blob/main/DOWNLOAD.md) to download the dataset.

First, download s5cmd (https://github.com/peak/s5cmd) or any s3 filesys manager, then download from the following folder:

```bash
s3://argoai-argoverse/av2/sensor/
s3://argoai-argoverse/av2/lidar/
s3://argoai-argoverse/av2/motion-forecasting/
s3://argoai-argoverse/av2/tbv/
```

For example you can do:

```bash
s5cmd --no-sign-request cp s3://argoai-argoverse/av2/sensor/* directory
```

Although I do provide a scripts for download this dataset, but I don't recommend you to use it, cause the argoverse dataset is pretty huge, and there is no feature like "resume from break-point", so maybe just download these folders one by one.
