

服务器ip：192.168.1.33为例

# 设置转速



# 最少参数

curl 'https://192.168.1.31/rpc/setfanspeed.asp' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H $'Cookie: SessionCookie=S90ENzqAcS1iuVp4xQiKyOhUaqoeXiT4002;    settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
  -H 'X-CSRFTOKEN: Vs96i0f1OI' \
  -H 'X-Requested-With: XMLHttpRequest' \
  --data-raw 'ID=6&PERCENT=50' \
  --compressed \
  --insecure ;


#  以下两行要curl出来 SessionCookie X-CSRFTOKEN

  # -H $'Cookie: SessionCookie=izslK4YZGQtoChCaeE0ILWtxLULasPA1001;    settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
  # -H 'X-CSRFTOKEN: tMh3IVNeks' \


# 源参数

curl 'https://192.168.1.31/rpc/setfanmode.asp' \
  -H 'Accept: */*' \
  -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H $'Cookie: SessionCookie=i26KClq53ksuvM0E99GOKXpXaPr1eYCD005;    settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
  -H 'Origin: https://192.168.1.31' \
  -H 'Referer: https://192.168.1.31/main.html' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.69' \
  -H 'X-CSRFTOKEN: rpSuZkk8sX' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'sec-ch-ua: "Chromium";v="116", "Not)A;Brand";v="24", "Microsoft Edge";v="116"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --data-raw 'MODE=0' \
  --compressed \
  --insecure


# -H 'X-CSRFTOKEN: rpSuZkk8sX' 是一个 cURL 命令中的请求头部分。它指定了一个名为 "X-CSRFTOKEN" 的自定义请求头，并设置其值为 "rpSuZkk8sX"。

# 在 HTTP 请求中，请求头部分包含了客户端向服务器发送的各种信息和设置。这里的 "X-CSRFTOKEN" 请求头通常用于防止跨站请求伪造（CSRF）攻击。服务器可以使用该令牌来验证请求的合法性，以确保请求来自于预期的来源。

# 在 cURL 命令中使用 -H 选项，后面跟着一个请求头的名称和值，即可添加该请求头到 HTTP 请求中。这里的命令表示在请求中包含了一个名为 "X-CSRFTOKEN" 的请求头，并将其值设置为 "rpSuZkk8sX"。