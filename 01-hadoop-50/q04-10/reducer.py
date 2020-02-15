import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#

import string

if __name__ == "__main__":
	totalLoc = 0
	lastLoc = ''
	
	for line in sys.stdin:
		line = line.strip()

		if lastLoc == '':
			totalLoc = int(1)
			lastLoc = line
		elif lastLoc != line:
			print(lastLoc + ',' + str(totalLoc))
			totalLoc = int(1)
			lastLoc = line
		else:
			totalLoc = totalLoc + int(1)
	print(lastLoc + ',' + str(totalLoc))