set -e

tar zxf v1.0-trainval01_blobs.tgz -C ../nuscenes/
echo "01 finished"
tar zxf v1.0-trainval02_blobs.tgz -C ../nuscenes/
echo "02 finished"
tar zxf v1.0-trainval03_blobs.tgz -C ../nuscenes/
echo "03 finished"
tar zxf v1.0-trainval04_blobs.tgz -C ../nuscenes/
echo "04 finished"
tar zxf v1.0-trainval05_blobs.tgz -C ../nuscenes/
echo "05 finished"
tar zxf v1.0-trainval06_blobs.tgz -C ../nuscenes/
echo "06 finished"
tar zxf v1.0-trainval07_blobs.tgz -C ../nuscenes/
echo "07 finished"
tar zxf v1.0-trainval08_blobs.tgz -C ../nuscenes/
echo "08 finished"
tar zxf v1.0-trainval09_blobs.tgz -C ../nuscenes/
echo "09 finished"
tar zxf v1.0-trainval10_blobs.tgz -C ../nuscenes/
echo "10 finished"
tar zxf v1.0-trainval_meta.tgz -C ../nuscenes/
echo "trainval_meta"

tar zxf v1.0-test_blobs.tgz -C ../nuscenes/
echo "test blob finished"
tar zxf v1.0-test_meta.tgz -C ../nuscenes/
echo "test meta finished"
