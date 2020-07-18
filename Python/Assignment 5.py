text_eve = list()
text_list = list()
text_mid = list()
result_list = list()
cnt = 0
flag = True

while flag  :
    n = input()
    if n == '#' : #當輸入為#時輸出結果
        flag = False
        result_list.sort() #將結果串列以字典順序進行排列
        for i in result_list :
            print(i) #輸出結果
        break
    else :
        text_eve = n.split() #將輸入的單字串儲存為串列
        text = n.lower() #將輸入單字串全部轉成小寫
        text_list = text.split() #將轉成小寫之後的單字串儲存為串列
        for i in text_list :
            x = list(i)
            text_mid.append(x) #將每個單字轉爲串列
        for i in text_mid :
            i.sort() #將每個單字標準化
        for i in range(len(text_mid)) :
            cnt = text_mid.count(text_mid[i]) #檢索每個標準化單字出現的次數
            if cnt == 1 :
                result_list.append(text_eve[i]) #將只出現過一次的標準化單字的原單字儲存進結果串列

                




