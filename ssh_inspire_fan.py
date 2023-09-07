import paramiko
import time
# SSH连接的信息
hostname = '192.168.x.x'
username = 'username'
password = 'password'

# 创建SSH客户端对象
client = paramiko.SSHClient()

# 自动添加主机密钥
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

try:
    # 连接SSH服务器
    client.connect(hostname, username=username, password=password)
    print("SSH连接已建立")

    time.sleep(5)


    # 在此处执行您希望的远程命令
    # 例如：
    stdin, stdout, stderr = client.exec_command('fan --set fanlevel 0 50')
    print(stdout.read().decode())



finally:
    # 关闭SSH连接
    client.close()
    print("SSH连接已关闭")