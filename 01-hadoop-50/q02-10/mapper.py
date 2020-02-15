import sys
if __name__ == "__main__":
  amount = ""
  purpose = ""
  cont = 0
  for line in sys.stdin:
		# Setting some defaults
    
    line = line.strip()
    splits = line.split(",")
		#print(str(len(splits)) + ' :: ' + line)
    amount = splits[4]
    purpose = splits[3]
    if cont == 0:
      cont = 1
    else:
      print(purpose + '\t' + amount)