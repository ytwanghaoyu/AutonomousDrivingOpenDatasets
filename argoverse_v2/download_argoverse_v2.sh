wget https://github.com/peak/s5cmd/releases/download/v1.4.0/s5cmd_1.4.0_Linux-64bit.tar.gz
tar xf s5cmd_1.4.0_Linux-64bit.tar.gz
mkdir -p sensor
s5cmd --no-sign-request cp s3://argoai-argoverse/av2/sensor/* sensor/
mkdir -p lidar
s5cmd --no-sign-request cp s3://argoai-argoverse/av2/lidar/* lidar/
mkdir -p motion-forecasting
s5cmd --no-sign-request cp s3://argoai-argoverse/av2/motion-forecasting/* motion-forecasting/
mkdir -p tbv
s5cmd --no-sign-request cp s3://argoai-argoverse/av2/tbv/* tbv/
