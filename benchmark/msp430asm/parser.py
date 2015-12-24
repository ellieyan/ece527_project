import os
from collections import defaultdict

def same_pattern(p1, p2):
	if len(p1) != len(p2):
		return False
	if not all(i in p2 for i in p1):
		return False
	if not all(i in p1 for i in p2):
		return False
	return True

def add_pattern(new_pattern, patterns, count, filename):
	for i in range(0, len(patterns)):
		if same_pattern(patterns[i], new_pattern):
			count[i] = count[i] + 1
			if filename not in file_list[i]:
				file_list[i].append(filename)
			return
	patterns.append(new_pattern)
	count.append(1)

	file_list[len(count)-1].append(filename)


patterns = []
pattern = []
count = []
file_list = defaultdict(list)

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
				#parse file name
				_,_,real_file_name = filename.partition('/msp430asm/')
				real_file_name,_,_ = real_file_name.partition('_')
				#with open(filename) as f:
				with open(filename, "r") as f:
					lines = f.readlines()
					for curr_line in lines:
						if "pattern" in curr_line:
							pattern = []
						elif curr_line == "\n":
							add_pattern(pattern, patterns, count, real_file_name)
						elif "->" in curr_line:
							pattern.append(curr_line)

out = open("allPatterns.txt", 'w')
highFreq = open("freqPatterns.txt", 'w')
for i in range(0, len(patterns)):
	out.write("pattern " + str(i) + " (count = " + str(count[i]) + "):\n")
	for line in patterns[i]:
		out.write(line)
	out.write("\n")

	if count[i] > 30:
		highFreq.write("pattern " + str(i) + " (count = " + str(count[i]) + "):\n")
		for line in patterns[i]:
			highFreq.write(line)
		highFreq.write('This pattern comes from the following files:\n')
		for f in file_list[i]:
			highFreq.write(f)
			highFreq.write(",")
		highFreq.write("\n")
		highFreq.write("\n")