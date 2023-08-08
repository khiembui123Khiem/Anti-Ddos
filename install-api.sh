yum install nano -y
yum install net-tools -y
yum install screen -y
yum install jq -y
rm -rf status.txt
rm -rf auto.sh
wget https://raw.githubusercontent.com/khiembui123Khiem/Anti-Ddos/main/status.txt
wget https://raw.githubusercontent.com/khiembui123Khiem/Anti-Ddos/main/auto.sh
screen -S API-Daukute -dm bash auto.sh
screen -r
