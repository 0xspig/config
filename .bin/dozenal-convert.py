import sys
import math

def dekel(num:int):
    num = abs(num)
    if num > 11:
        return num

    if num < 10:
        return str(num)
    elif num == 10:
        return str("X")
    elif num == 11:
        return str("E")


def convert(number:int, recurse = False): 
    if number < 0:
        negative = True
    else:
        negative = False

    number = abs(number)
  
    if number < 10 and not recurse:
        return str(number).zfill(2)
    elif number < 12:
        return str(dekel(number))

    quot = math.floor(number / 12)
    rem = number % 12
   
    out = convert(quot, True) + str(dekel(rem))
   
    if negative: 
        return str("-" + out)
    else:
        return str(out) 

def main():
    print(convert(int(sys.argv.pop())))
    return

if __name__ == "__main__":
    main()

