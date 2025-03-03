import cal
import pandas as pd

list1 = []

def error():
    print("Please selection 1-5 only\n")
    print("==================================================================")


def freeout(sum,free_d,name,address): #Excel (total)
    list1.append([name,address,0,sum])
    print("Total price is:",str(sum),"Baht\n")
    print("*********************************************************************************************************\n")
    data = pd.DataFrame(list1,columns=["Name","Address","Delivery Price","Total"])
    data.to_excel("Result_Calculate.xlsx")

def cod_output(sum,name,address): #Excel (total)
    cod=80
    total = sum+cod
    list1.append([name,address,cod,total])
    print("Total price is:",str(total),"Baht\n")
    print("*********************************************************************************************************\n")
    data = pd.DataFrame(list1,columns=["Name","Address","Delivery Price","Total"])
    data.to_excel("Result_Calculate.xlsx")

    
def n_cod_out(sum,name,address): #Excel (total)
    n_cod=50
    total = sum+n_cod
    list1.append([name,address,n_cod,total])
    print("Total price is:",str(total),"Baht\n")
    print("*********************************************************************************************************\n")
    data = pd.DataFrame(list1,columns=["Name","Address","Delivery Price","Total"])
    data.to_excel("Result_Calculate.xlsx")

