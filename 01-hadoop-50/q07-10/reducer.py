import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
import string

if __name__ == "__main__":
  for line in sys.stdin:
    
    line = line.strip()
    t1,t3,t2 = line.split("\t")
    t3=int(t3)
    print(t1 + '\t' + t2 + '\t' + str(t3))