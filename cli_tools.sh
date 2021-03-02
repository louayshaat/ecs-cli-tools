cd ~
sudo yum groupinstall "Development Tools" -y
sudo yum install jq gettext -y
sudo curl -so /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli
pip install --upgrade pip
pip install awscli --upgrade

# For container insights and service autoscaling load generation
curl -C - -O http://download.joedog.org/siege/siege-4.0.5.tar.gz
tar -xvf siege-4.0.5.tar.gz
pushd siege-*
./configure
make all
sudo make install 
popd
