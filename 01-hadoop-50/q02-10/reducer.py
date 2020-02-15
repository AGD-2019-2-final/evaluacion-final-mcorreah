import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
import string

if __name__ == "__main__":
  maxLoc = 0
  lastLoc = ''
  
  for line in sys.stdin:
    
    line = line.strip()
    purpose,amount = line.split("\t")
    if lastLoc == '':
      maxLoc = amount
      lastLoc = purpose
    elif lastLoc != purpose:
      print(lastLoc + '\t' + str(maxLoc))
      maxLoc = amount
      lastLoc = purpose
    elif int(maxLoc)<int(amount):
      maxLoc = amount
  print(lastLoc + '\t' + str(maxLoc))