result_list = list()
flag = True
cnt = 0

while flag  :
    n,q = map(int,input().split())
    if n == 0 and q == 0 : #輸入0 0時
        flag = False
        for i in range(cnt) :
            print('CASE# ' , i + 1 , ':',sep='')  #輸出查找結果
            for a in result_list[i]:
                print(a)
        break
    else :
        result = [] #每個回圈都更新串列為空白串列
        marblr_list = [] #同上
        search_list = [] #同上
        for i in range(n) :
            marblr_list.append(input()) #創建大理石串列 
        marblr_list.sort() #將大理石串列排序
        for i in range(q) :
            search_list.append(input()) #創建查找串列
        for key in search_list:
            if key in marblr_list: #檢查在大理石中是否有Q
                value = marblr_list.index(key) #查找Q的索引值
                str2 = str(key) + ' found at ' + str(value + 1)
                result.append(str2)
            else : #大理石中找不到Q的情況
                str1 = str(key) + ' not found'
                result.append(str1) #放入該回圈結果串列          
        result_list.append(result) #放入總結果串列
        cnt += 1




    



