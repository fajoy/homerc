### 個人環境檔配置

這是個人所習慣的環境設定，主要包含有:

* bashrc
* vimrc
* screenrc
* cshrc

### 設定檔安裝步驟(若已有存在設定將會自動備份)

```bash
$ git clone https://github.com/fajoy/homerc.git
$ homerc/install.sh
```

### vim主要快捷鍵配置

ctrl + t + t 開新分頁

L 切換至右邊分頁

H 切換至左邊分頁

F2 顯示行數

F3 顯示目前編輯檔案

F4 顯示最近編輯檔案 可按'號後 在案mark符號 則可快速切換至檔案

\ 放開後 按F9 修改緩衝區命令

\ 放開後 按F10 修改緩衝區命令參數

F9 運行緩衝區命令

### screen主要快捷鍵配置

ctrl + a 放開後 按c 開啟新視窗

ctrl + a 放開後 按k 關閉目前視窗

ctrl + 右(方向鍵) 切換下一個視窗

ctrl + 左(方向鍵) 切換上一個視窗

ctrl + a 放開後 a 回前一個視窗

ctrl + [ 進入複製模式 利用方向建移動 按空白鍵開始選擇範圍 再按一次空白或enter存入緩衝區

ctrl + ] 貼上

ctrl + a 放開後 按 b 顯示big5模式(看ptt專用)

ctrl + a 放開後 按 u 顯示utf8模式



### 要使putty 或 pietty 顯示UTF8中文時須如下設定

[pietty]

並且須設定locale，為LANG=en_US.UTF-8

```bash
#執行下列命令會如下狀況
$ locale
LANG=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_ALL=
```

[pietty]: https://raw.github.com/fajoy/homerc/master/img/pietty-setting.png
