import sys
if __name__ == "__main__":
  amount = ""
  purpose = ""
  
  for line in sys.stdin:
		# Setting some defaults
    line = line.strip()
    splits = line.split(",")
		#print(str(len(splits)) + ' :: ' + line)
    amount = splits[0]
    purpose = splits[1]
    print(purpose + '\t' + amount)