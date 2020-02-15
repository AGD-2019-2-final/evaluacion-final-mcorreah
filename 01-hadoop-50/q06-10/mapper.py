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
    amount = splits[0]
    purpose = splits[2]
    print(amount + '\t' + purpose)
