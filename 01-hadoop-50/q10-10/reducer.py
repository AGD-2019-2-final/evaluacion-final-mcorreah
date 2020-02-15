import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
import string

if __name__ == "__main__":
  let = ""
  cadena = ""
  for line in sys.stdin:
    
    line = line.strip()
    t1,t3 = line.split("\t")
    t3 = int(t3)
    if let == "":
      let=t1
      cadena += str(t3) 
    elif let!=t1:
      print(let + '\t' + cadena)
      let = t1
      cadena = str(t3)
    else:
      cadena += "," + str(t3)
  print(let + '\t' + cadena)