#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 200 ]
then
  cat /root/status-captcha.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/block-off.sh) && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/captcha-off.sh) && echo "allow" > /root/status-captcha.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status-captcha.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/block-on.sh) && bash <(curl -Ls https://raw.githubusercontent.com/vnuf182/hihi/main/captcha-on.sh) && echo "block" > /root/status-captcha.txt && clear && echo -e "ANTI DDOS ON"
fi
