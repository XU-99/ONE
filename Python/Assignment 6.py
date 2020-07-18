text_eve = list()
text_list = list()
text_mid = list()
cnt = 0
flag = True

while flag  :
    n = input()
    if not len(n) : #當輸入零時輸出結果
        flag = False
        for i in text_eve :
            print(i) #輸出結果
        break
    else :
        text = n.lower() #將輸入文字全部轉成小寫
        text_list = text.split() #將轉成小寫之後的文字儲存為串列
        text_mid.extend(text_list)
        text_mid.sort() #將輸入串列以字典順序進行排列
        for i in text_mid :
            cnt = text_mid.count(i) #檢測每一個單字在輸入文字中出現的次數
            if i in text_eve: #如果出現次數大於一次則不重複放入結果串列
                continue
            if cnt != 0 :
                text_eve.append(i) #將單字放入結果串列




                




