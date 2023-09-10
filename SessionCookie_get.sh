
# -k是ssl不安全用的，参考
# https://blog.csdn.net/lixuande19871015/article/details/101206642

# 旧IPMI用http
# 新IPMI用http
# 版本分界不知道
# 可能只是个人水平有限

curl -k 'https://192.168.1.31/rpc/WEBSES/create.asp' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Origin: https://192.168.1.31' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  --data-raw 'WEBVAR_USERNAME=<你的账号>&WEBVAR_PASSWORD=<你的密码>' \
  --compressed \
  --insecure




# 源参数
curl -k 'https://192.168.1.31/rpc/WEBSES/create.asp' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H 'Cookie: BMC_IP_ADDR=192.168.1.31; test=1' \
  -H 'Origin: https://192.168.1.31' \
  -H 'Referer: https://192.168.1.31/index.html' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69' \
  -H 'sec-ch-ua: "Chromium";v="116", "Not)A;Brand";v="24", "Microsoft Edge";v="116"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --data-raw 'WEBVAR_USERNAME=<你的账号>&WEBVAR_PASSWORD=<你的密码>' \
  --compressed \
  --insecure