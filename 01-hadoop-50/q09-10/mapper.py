import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
  amount = ""
  purpose = ""
  
  for line in sys.stdin:
		# Setting some defaults
    line = line.strip()
    splits = line.split()
		#print(str(len(splits)) + ' :: ' + line)
    t1 = splits[0]
    t2 = splits[1]
    t3 = splits[2]
    print( t3.zfill(3) +'\t' + t1 + '\t' + t2 )
