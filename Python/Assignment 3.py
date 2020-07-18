flag = True
result_list = list()
cnt = 0

while flag:
    try:
        n = input()
    except EOFError:
        pass
    if not len(n): #檢測到沒有輸入時輸出之前輸入的計算結果
        flag = False
        for i in range(cnt):
            count_dict = {}
            count = 0
            list_len = len(result_list[i])
            for s in range(result_list[i][list_len-1]+1): #統計每個因數的出現次數
                ct = result_list[i].count(s)
                if ct != 0:
                    count_dict[s] = ct
            for name,key in count_dict.items(): #將因數和該因數出現的次數整合成dict             
                if key == 1 :
                    count += 1
                    if count == list_len :
                        print(str(name),end='') #當這個因數是最後一個時
                    else:
                        print(str(name)+' *',end=' ') #當這個因數不是最後一個時
                elif key > 1 : #當因數出現次數大於一時
                    count += key
                    if count == list_len :
                        print(str(name)+' ^ '+str(key),end=' ') #當這個因數是最後一個時
                    else:
                        print(str(name)+' ^ '+str(key)+' *',end=' ',) #當這個因數不是最後一個時
            print()       
        break  
    else: #計算輸入的所有因數
        num = int(n)
        num_list = []
        cnt += 1 #統計有幾個輸入
        while num > 1 :
            
            for i in range(2,int(num+1)):
                if num % i == 0 :
                    num_list.append(i)
                    num = num / i 
                    break
        result_list.append(num_list)   
           

