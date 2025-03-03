import cal
import output

x = int(input("Input your some every for start this program: "))

def checkcac():
    for i in range(x):
        sum = 0
        free_d = 0
        while(x != 'x'):
            print("====================================The World of Cactus @ ETE-50 KMUTT======================================")
            print("If you have bought more than 3 cacti. FREE DELIVERY !!")
            print("=====================Select Type of Cactus=======================")
            print("1.Gymnocalycium Baldianum Cactus")
            print("2.Mammillaria Spinosissima Cactus")
            print("3.Astrophytum Capricorne Cactus")
            print("4.Coryphantha Cactus")
            print("5.Lophophora Cactus")
            print("6.Please Enter x or other number to calculate the total price\n")

            txt_check = input("Input number: ")

            if txt_check == 'x':
                print("Cannot process, please you choose again.\n")
                print("==================================================================\n")
                break

            check = int(txt_check)

            if check == 1:
                print("Gymnocalycium Baldianum Cactus")
                print("Price: 50 THB")
                print("Size: 5.0 cm")
                sum += 50
            elif check == 2:
                print("Mammillaria Spinosissima Cactus")
                print("Price: 40 THB")
                print("Size: 4.0 cm")
                sum += 40
            elif check == 3:
                print("Astrophytum Capricorne Cactus")
                print("Price: 50 THB")
                print("Size: 3.5 cm")
                sum += 50
            elif check == 4:
                print("Coryphantha Cactus")
                print("Price: 50 THB")
                print("Size: 3.5 cm")
                sum += 50
            elif check == 5:
                print("Lophophora Cactus")
                print("Price: 40 THB")
                print("Size: 4.0 cm")
                sum += 40
            else:
                return output.error()

            print("---------------------------------------------------------------------------------------------------------")
            free_d += 1

        name = input("What is your name?: ")
        address = input("Where do you live?: ")
        cal.infor(name,address,free_d,sum)

checkcac()