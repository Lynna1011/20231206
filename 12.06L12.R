#第一節：HTML基本語法介紹(2)
#把整個網頁的資訊讀進來，這裡我們可以用函數「scan」
URL = "https://reg.ntuh.gov.tw/EmgInfoBoard/NTUHEmgInfo.aspx" #放網址

txt = scan(URL, what = "character", encoding = "UTF-8", quiet = TRUE)

head(txt, 15) #存在TXT這個物件

txt_new = paste(txt, sep = "", collapse = " ")

TITLE.pos = gregexpr("<title>.*</title>", txt_new)
start.TITLE.pos = TITLE.pos[[1]][1]
end.TITLE.pos = start.TITLE.pos + attr(TITLE.pos[[1]], "match.length")[1] - 1

TITLE.word = substr(txt_new, start.TITLE.pos, end.TITLE.pos) #擷取63-107的地方

TITLE.word
