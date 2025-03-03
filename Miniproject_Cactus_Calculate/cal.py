import output
list1 = []

def infor(name,address,free_d,sum): #Excel (Name,Address)
    list1.append([name,address])
    print("My name is",name)
    print("Address is",address)
    cal_price(sum,free_d,name,address)

def cal_price(sum,free_d,name,address):
    if(free_d >= 3):
        output.freeout(sum,free_d,name,address)
    else: 
        cod_check = int(input("If you enter 1 is COD and if you enter 0 is Non-COD: "))
        
        if(cod_check == 1):
            output.cod_output(sum,name,address)
        elif(cod_check == 0):
            output.n_cod_out(sum,name,address)
        else:
            print("Please Enter 0 or 1 only !!")
            return cal_price(sum,free_d,name,address)
