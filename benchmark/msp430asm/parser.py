import os


def same_pattern(p1, p2):
	if len(p1) != len(p2):
		return False
	if not all(i in p2 for i in p1):
		return False
	if not all(i in p1 for i in p2):
		return False
	return True

def add_pattern(new_pattern, patterns, count):
	for i in range(0, len(patterns)):
		if same_pattern(patterns[i], new_pattern):
			count[i] = count[i] + 1
			return
	patterns.append(new_pattern)
	count.append(1)


patterns = []
pattern = []
count = []

top_dir = "../"
dirs = os.listdir(top_dir)
for d in dirs:
	dirname = top_dir + d
	if os.path.isdir(dirname) and "msp430asm" in dirname:
		files = os.listdir(dirname)
		#files = [f for f in os.listdir('.') if os.path.isfile(f) and ".txt" in f]
		for local_filename in files:
			filename = os.path.join(dirname, local_filename)
			if os.path.isfile(filename) and "_patterns.txt" in filename:
				print filename
				#with open(filename) as f:
				with open(filename, "r") as f:
					lines = f.readlines()
					for curr_line in lines:
						if "pattern" in curr_line:
							pattern = []
						elif curr_line == " \n":
							add_pattern(pattern, patterns, count)
						else:
							pattern.append(curr_line)

out = open("allPatterns.txt", 'w')
highFreq = open("freqPatterns.txt", 'w')
for i in range(0, len(patterns)):
	out.write("pattern " + str(i) + " (count = " + str(count[i]) + "):\n")
	for line in patterns[i]:
		out.write(line)
	out.write("\n")

	if count[i] > 10:
		highFreq.write("pattern " + str(i) + " (count = " + str(count[i]) + "):\n")
		for line in patterns[i]:
			highFreq.write(line)
		highFreq.write("\n")
