
def fx(a,b,c):
    delte = b * b - 4 * a * c
    if delte < 0 :
        print("No real root")
    elif delte == 0 :
        result = (- b) / (2 * a)
        print("Two same roots x=", int(result), sep='')
    else :
        result_1 = (- b + delte) / (2 * a)
        result_2 = (- b - delte) / (2 * a)
        print("Two different roots x1={} , x2={}".format(int(result_1),int(result_2)),sep='')
         

m,n,s = map(int,input("Please enter a,b,c : ").split())

fx(m,n,s)
