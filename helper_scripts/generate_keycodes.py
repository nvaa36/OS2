file = open('keycodes.txt')

codes = {'8' : 0x3e}

for line in file:
	split_line = line.split()
	try:
		codes[split_line[0]] = int(split_line[1], 16)
	except:
		continue
	try:
		codes[split_line[3]] = int(split_line[4], 16)
	except:
		continue
	try:
		codes[split_line[6]] = int(split_line[7], 16)
	except:
		continue

print(codes)
for key, value in sorted(codes.items(), key=lambda item: item[1]):
    print("\'%s\'" % (key), end=', ')