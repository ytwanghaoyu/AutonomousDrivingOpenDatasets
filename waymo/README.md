# Waymo Dataset Download Method

First of all, you need to login your goole account in their [official websit](https://waymo.com/open/) and obtain the access to the data from their official website. Data access will be given to you within two days.

The Waymo dataset is stored in google cloud bucket, it's different with the s3 bucket that we offen seen. We need a tool called gsutil. You can download `gsutil` from https://cloud.google.com/sdk/docs , you can refer to this tools https://github.com/RalphMao/Waymo-Dataset-Tool.

```bash
# Download google cloud cli which contains gsutil
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-410.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-410.0.0-linux-x86.tar.gz
./google-cloud-sdk/install.sh
```

After installation finished, simply run `gcloud init` to log into your google account.

Then download the data you want by running` gsutil -m cp -r gs://google_cloud_dataset_bucket_name ./` Notice that using `-m` will significantly increase the downloading speed when downloading batch data.

You might see `archive` and `individule files` folder in gs, I think it's enough to just download the `individule files` folder
