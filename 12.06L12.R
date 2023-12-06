#第一節：HTML基本語法介紹(2)
#把整個網頁的資訊讀進來，這裡我們可以用函數「scan」
URL = "https://reg.ntuh.gov.tw/EmgInfoBoard/NTUHEmgInfo.aspx" #放網址

txt = scan(URL, what = "character", encoding = "UTF-8", quiet = TRUE)

head(txt, 15) #存在TXT這個物件

