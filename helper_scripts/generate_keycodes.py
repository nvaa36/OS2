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
final_codes = []
for i in range(240):
	final_codes.append('_')
for key, value in codes.items():
    final_codes[value] = key

for code in final_codes:
	print("'%s'" % str(code).lower(), end=', ')
