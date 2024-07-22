# win断网自动关机脚本

[B站专栏链接](https://www.bilibili.com/read/cv29637255)  
因为专栏彻底烂掉了所以搬一些东西过来  

---
# 简中
## 配置说明
- `IP` 改成自己的常在线设备地址（比如路由器）
- `max_times` 为最大尝试次数，一次约等于一秒，但不完全等于，请注意

## 注意事项
- 下载下来后先检查一下编码是不是`ANSI`或者`GB2312`，如果不是就记事本手动另存为成ANSI一下

---
# English
sorry for my english.

## manual
- change `IP` to your always online device.(such as a router)
- `max_times` is the max retries.one time ≈ one second.

## others
- `在事件查看器中搜索1074查看关机历史记录` == `Find shutdown history at Event viewer(eventvwr). code:1074`
- `网络连接已恢复` == `Network restored`
- `网络连接超时` == `Network timeout`
- `你的电脑会在10秒内关机` == `Your PC will shutdown in 10s.`
- `如需取消请按 win+r 输入 shutdown -a` == `Press win+r and type shutdown -a to cancel.`
- `设置的IP地址不可达` == `IP address is unreachable.`

---
# 日本語
日本語が苦手なので、多分書き間違いたものがあります。

## 説明
- `IP` をいつでもオンラインしているデバイスのアドレスにチェンジしてください。（ルーターなど）
- `max_times` は最大再試行回数です。一回約一秒です。

## 他の物
- ダウンロードした後、ファイルのエンコーディングをチェックしてください。  
  `ANSI`ではない場合があります。`ANSI`にチェンジしてください。
