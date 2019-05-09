output_file = open("isr.asm", "w")

header = open("isr_header.txt", "r").read()
output_file.write(header)
output_file.write("\n")

base = open("isr_base.txt", "r").read()
err_base = open("isr_err_base.txt", "r").read()

errcode_isrs = [8, 10, 11, 12, 13, 14, 17]

for i in range(255):
	if i in errcode_isrs:
		output_file.write(err_base % (i, i) + "\n")
	else:
		output_file.write(base % (i, i) + "\n")

output_file.write("isr_locs:\n")
for i in range(255):
   output_file.write("dq isr_%d\n" % i)

footer = open("isr_footer.txt", "r").read()
output_file.write("\n")
output_file.write(footer)
