import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
  
  for line in sys.stdin:
		# Setting some defaults
    line = line.strip()
    splits = line.split(",")
    s = splits[0].split()
		#print(str(len(splits)) + ' :: ' + line)
    #print(s[0] + '\t' + splits[2].zfill(3) + '\t' + splits[1])
    print(s[1] + '\t' + s[0].zfill(3))
    for i in range(1,len(splits)):
      print(splits[i] + '\t' + s[0].zfill(3))