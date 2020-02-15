import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
import string

if __name__ == "__main__":
  for line in sys.stdin:
    
    line = line.strip()
    purpose,amount = line.split("\t")
    print(amount + ',' + purpose)