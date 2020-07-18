result_list = []
stack = [] #建立堆叠
flag = True


def push() : #建立PUSH指令
    empty_set = set() 
    stack.append(empty_set) #將空集合推入堆叠中


def dup() : #建立DUP指令
    mid = stack[-1] #複製堆叠最頂端集合推入堆叠中
    stack.append(mid)


def union() : #建立UNION指令
    out1 = stack.pop()
    out2 = stack.pop() #依序彈出堆叠元素
    allitem = out1.union(out2) #取得兩個元素的聯集並推入堆叠中
    stack.append(allitem) 


def intersect() : #建立INTERSECT指令
    out1 = stack.pop()
    out2 = stack.pop() #依序彈出堆叠元素
    both = out1.intersection(out2) #取得兩個元素的交集並推入堆叠中
    stack.append(both)


def add() : #建立ADD指令
    out1 = stack.pop() 
    out2 = stack.pop() #依序彈出堆叠元素
    mid = frozenset(out1) #將先彈出的元素固定
    out2.add(mid) #將先彈出的元素加入到后彈出的元素中並推入堆叠
    stack.append(out2)


while flag :
    cnt = int(input()) #取得case次數
    for i in range(cnt) : 
        stack = [] #初始化堆叠
        result = [] 
        rnd = int(input()) #取得操作次數
        for j in range(rnd) :
            opera = str(input()) #依序取得操作内容
            #依據輸入指令完成相對應的函function操作並將堆叠頂端的集合長度放入結果串列
            if opera == 'PUSH' :
                push()
                result.append(len(stack[-1])) 
            elif opera == 'DUP' :
                dup()
                result.append(len(stack[-1]))
            elif opera == 'UNION' :
                union()
                result.append(len(stack[-1]))
            elif opera == 'INTERSECT' :
                intersect()
                result.append(len(stack[-1]))
            elif opera == 'ADD' :
                add()
                result.append(len(stack[-1]))
            else :
                result.append('Error') #當輸入指令無法辨識時輸出errors
        result.append('***') #每一個case結尾都加入***
        result_list.append(result) #將結果串列推入輸出串列
    flag = False
    print()
    for i in result_list : #按照case的順序輸出結果
        for j in i :
            print(j)
    
