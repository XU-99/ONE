list_eve = list()
result = list()
result_list = list()
code_ipt = list()
flag = True


def readcode(code): #建立解碼表
    list_mid = []
    flag_code = True
    x = 1 #密碼位數從1開始
    num = 0
    len_code = len(code) #檢測輸入字符共有幾個
    while flag_code :
        len_code = len_code - (2**x-1) #檢測需要幾位的密碼
        if len_code > 0:
            x += 1
        else :
            flag_code = False 
    for i in range(x) : # x為密碼位數
        list_mid = []
        for s in range(2**(i+1)-1) : 
            if num == len(code):
                break
            list_mid.append(code[num]) #在相對應位數的密碼上依序填入字符
            num += 1
        list_eve.append(list_mid) #將不同位數對應的字符填入解碼串列


def readint(code_mid): #讀取解碼表解碼
    result = []
    flag_out = True
    while flag_out :
        flag_mid = True
        len_num = '' #清零位數計數器
        for i in range(3) : #讀取密碼位數訊息
            s = code_mid.pop(0)
            len_num += s
        length = int(len_num,2) #將二進制轉爲十進制
        if length == 0 : #當密碼位數訊息為零時結束解碼
            flag_out = False
            result_list.append(result) #將此次解碼結果存入結果串列
        else :
            while flag_mid :
                code_num = '' #清零密碼計數器
                for i in range(length) : #讀取當前位數密碼訊息
                    s = code_mid.pop(0)
                    code_num += s
                code_value = int(code_num,2) #將二進制轉爲十進制
                if code_value == 2**length -1 : #當讀到全是1的密碼時停止讀碼
                    flag_mid = False
                else :
                    result.append(list_eve[length-1][code_value]) #將當前位數密碼訊息對應的字符填入解碼結果串列



while flag :
    enter = list(input())
    if not len(enter) : #當檢測不到輸入時
            flag = False
            readint(code_ipt) #進行最後一次解碼操作
            for i in result_list :
                for j in i :
                    print(j, end='') #將結果依序輸出
                print()
            break
    elif enter[0] == '0' or enter[0] == '1' : #當輸入為密碼時
        code_ipt.extend(enter) #將輸入存進密碼串列
    else :
        if not len(code_ipt) : #當輸入為字串且密碼串列為空時，即第一次輸入字符時
            readcode(enter) #對輸入的字符建立解碼表
        else : #當輸入為字串且密碼串列不爲空時
            readint(code_ipt) #對之前輸入的密碼進行解碼操作
            list_eve = [] #清零解碼表
            readcode(enter) #對輸入的字符建立解碼表
            code_ipt = [] #清零密碼串列
