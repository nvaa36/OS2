output_file = open("isr.asm", "w")

header = open("isr_header.txt", "r").read()
output_file.write(header)
output_file.write("\n")

base = open("isr_base.txt", "r").read()

for i in range(255):
	output_file.write(base % (i, i, i // 100 + 30, (i // 10) % 10 + 30, i % 10 + 30) + "\n")
