og = '`1234567890-=[]\;\',./'
shifted = '~!@#$%^&*()_+{}|:"<>?'

list = []
for i in range(127):
	if chr(i) in og:
		list.append(shifted[og.find(chr(i))])
	else:
		list.append('_')

for i in list:
	print("'%c'" % i, end=", ")