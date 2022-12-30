# Download method for nuscenes dataset

The download url for nuscenes is different between different download requests. Therefore, you have to get an account and download it via webpage, but, you can use the url to download in command line

For example

```bash
sudo wget "https://s3.amazonaws.com/data.nuscenes.org/public/v1.0/v1.0-trainval01_blobs.tgz?AWSAccessKeyId=********&Signature=********&Expires=1666007479" &
sudo wget "https://s3.amazonaws.com/data.nuscenes.org/public/v1.0/v1.0-trainval02_blobs.tgz?AWSAccessKeyId=********&Signature=********&Expires=1666007491" &
sudo wget "https://s3.amazonaws.com/data.nuscenes.org/public/v1.0/v1.0-trainval03_blobs.tgz?AWSAccessKeyId=********&Signature=********&Expires=1666007519" &
......

# Rename them
ls v1.0-*tgz?* |while read line; do mv $line ${line%%\?*}; done
```

For a large dataset like that, it's recommended to check the md5 code.

```bash
md5sum ../v1.0-trainval-original-tgz/v1.0-trainval01_blobs.tgz
echo 8b5eaecef969aea173a5317be153ca63
md5sum ../v1.0-trainval-original-tgz/v1.0-trainval02_blobs.tgz
echo 116085f49ec4c60958f9d49b2bd6bfdd
.....
md5sum ../v1.0-trainval-original-tgz/v1.0-trainval_meta.tgz
echo 3eee698806fcf52330faa2e682b9f3a1
```

Then extract them into the same folder

```bash
set -e
tar zxf ../v1.0-trainval-original-tgz/v1.0-trainval01_blobs.tgz -C ../nuscenes/
echo "01 finished"
tar zxf ../v1.0-trainval-original-tgz/v1.0-trainval02_blobs.tgz -C ../nuscenes/
echo "02 finished"
.....
tar zxf ../v1.0-trainval-original-tgz/v1.0-trainval_meta.tgz -C ../nuscenes/
echo "trainval_meta"
```
