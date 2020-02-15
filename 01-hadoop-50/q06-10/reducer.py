import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
import string

if __name__ == "__main__":
  maxLoc = 0
  lastLoc = ''
  minLoc = 0
  
  for line in sys.stdin:
    
    line = line.strip()
    purpose,amount = line.split("\t")
    if lastLoc == '':
      maxLoc = amount
      minLoc = amount
      lastLoc = purpose
    elif lastLoc != purpose:
      print(lastLoc + '\t' + str(maxLoc) + '\t' + str(minLoc))
      maxLoc = amount
      minLoc = amount
      lastLoc = purpose
    elif float(maxLoc)<float(amount):
      maxLoc = amount
    elif float(minLoc)>float(amount):
      minLoc = amount
  print(lastLoc + '\t' + str(maxLoc) + '\t' + str(minLoc))