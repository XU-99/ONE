n = input('Please enter a number:')
for a in range(int(n)):
    value = 0
    if a == int(n):
        break
    else:
        for b in range(int(n)):
            if b == int(n):
                break
            else:
                value = (a+1)*(b+1)
                print(a+1,' * ',b+1,' = ',value,'\n', sep = '')

        