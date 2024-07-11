import os

# 连接端口
PORT = os.environ.get("pord", 2024)

# 密钥（32个十六进制字符）
USERS = {
    "tg":  os.environ.get("users","9bb2d2306dfeb32ee7fb549acf0f16c6")
}

MODES = {
    # 经典模式，容易被墙
    "classic": os.environ.get("classic",False),

    # 混淆伪装
    "secure": os.environ.get("secure",True),

    # TLS加密
    "tls": os.environ.get("tls",True)
}

# 伪装域名
TLS_DOMAIN = os.environ.get("domain","www.apple.com")

# 广告标签，可从 @MTProxybot 获取
# AD_TAG = "3c09c680b76ee91a4c25ad51f742267d"
