result_list = list()
flag = True

while flag  :
    n = int(input())
    if n == -1 : #當檢測到輸入為-1時開始輸出結果
        flag = False
        for key in range(len(result_list)) : #輸出每輪結果
            print("Round {}".format( key + 1 )) 
            print(result_list[key]) 
        break
    else :
        org = input()
        bot = list(org) #建立電腦的單字
        org = input()
        aim = list(org) #建立猜測的單字
        bot_len = len(bot)
        chance = 7 #共有七次機會
        for i in aim :
            bad = 1 #默認這一個字母會猜錯
            for s in bot :
                if s == i :
                    bot_len -= 1
                    bot.remove(s)
                    bot.append(' ') #猜過的再猜也算錯
                    bad = 0 #這個字母猜對之後更改指標
            if bad == 1 :
                chance -= 1
            #有結果之後跳出回圈
            if chance == 0 :
                break
            if bot_len == 0 :
                break 
        #將每輪的結果依次輸入結果串列    
        if chance == 0 :
            str = "You lose"
            result_list.append(str) 
        elif bot_len == 0 :
            str = "You win"
            result_list.append(str)
        else : 
            str = "You chickened out"
            result_list.append(str)
        




        




    



