# Download scripts for level-5 (lyft) dataset

You actually don't need an account to download it.

```bash
wget "https://lyft-l5-datasets-public.s3-us-west-2.amazonaws.com/3d-object-detection/test.tar"
wget "https://lyft-l5-datasets-public.s3-us-west-2.amazonaws.com/3d-object-detection/train.tar"
wget "https://lyft-l5-datasets-public.s3-us-west-2.amazonaws.com/3d-object-detection/one_scene.tar"
```

It's a relative small dataset, so just use the above scripts is enough.

For train/val split, you can refer to [mmdetection3d's documentataion](https://github.com/open-mmlab/mmdetection3d/blob/master/docs/en/datasets/lyft_det.md)
