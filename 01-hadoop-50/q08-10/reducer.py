import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
import string

if __name__ == "__main__":
  sumLoc = 0
  lastLoc = ''
  nLoc = 0
  
  for line in sys.stdin:
    
    line = line.strip()
    purpose,amount = line.split("\t")
    if lastLoc == '':
      sumLoc = float(amount)
      nLoc = int(1)
      lastLoc = purpose
    elif lastLoc != purpose:
      print(lastLoc + '\t' + str(sumLoc) + '\t' + str(sumLoc/nLoc))
      sumLoc = float(amount)
      nLoc = int(1)
      lastLoc = purpose
    else:
      sumLoc += float(amount)
      nLoc+=int(1)
  print(lastLoc + '\t' + str(sumLoc) + '\t' + str(sumLoc/nLoc))