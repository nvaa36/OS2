output_file = open("isr.asm", "w")

header = open("isr_header.txt", "r").read()
output_file.write(header)
output_file.write("\n")

base = open("isr_base.txt", "r").read()
err_base = open("isr_err_base.txt", "r").read()

errcode_isrs = [8, 10, 11, 12, 13, 14, 17]

for i in range(255):
	if i in errcode_isrs:
		output_file.write(err_base % (i, i, i // 100 + 30, (i // 10) % 10 + 30, i % 10 + 30) + "\n")
	else:
		output_file.write(base % (i, i, i // 100 + 30, (i // 10) % 10 + 30, i % 10 + 30) + "\n")
