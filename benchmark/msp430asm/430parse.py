import sys
from pattern_finder import DAG as YAN
from collections import defaultdict
#reads src,writes dst
twoArg0 = ['mov']
#reads both dst and src , writes to dst
twoArg1 = ['add','sub','bic','bis','xor','and']
#reads both dst and src 
twoArg2 = ['cmp','bit']
#reads and write to dst
oneArg0 = ['rrc','rra','swpb','sxt','clr','rla']
#read src
oneArg1 = ['push']
#write src
oneArg2 = ['pop']
#jump/br instructions
jmpInst = ['call','jc','jhs','br','ret','jmp','jne','jge','jl','jeq','jlo']
#unhandled
otherInst = ['clrc']

allInst = []
allInst.extend(twoArg0)
allInst.extend(twoArg2)
allInst.extend(twoArg1)
allInst.extend(oneArg0)
allInst.extend(oneArg1)
allInst.extend(oneArg2)
allInst.extend(jmpInst)
allInst.extend(otherInst)

class DFGG:
	def __init__(self):
		self.labels = {}
		self.func_start = 0
		self.func_end = 0
		self.doLabels = False
		self.jmpflag = False
		self.retaddr = 0
		self.writetable = defaultdict(None)
		self.regtable = ['r0', 'r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7'
						, 'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15']
		self.funcName = ''
		#count number of insts
		self.instNumber = -1
		#map from instNumbet to actual number
		self.instNumberToActual = {}

	def callAddEdge(self, reg, num, yan=YAN()):
		yan.add_edge(gen.writetable[reg], num)
		print("dependency from instruction: "+ a[int(gen.instNumberToActual[gen.writetable[reg]])])

	def readArg(self,arg,num,yan):
		#if arg is imm, dont do shit
		if arg[0] == '#':
			return
		#if arg is a reg/contains a reg
		reg = None
		for key in self.regtable:
			if key in arg:
				reg = key

		#do read on reg
		if reg in (self.writetable).keys():
			if self.writetable[reg] != None:
				self.callAddEdge(reg,num,yan)

		#do read on arg
		if arg != reg:
			if arg in (self.writetable).keys():
				if self.writetable[arg] != None:
					self.callAddEdge(arg,num,yan)
		return

	def writeArg(self,arg,num,yan):

		if arg[0] == '#':
			print("ERROR: Writing to an imm")
			return
		#if arg is a reg/contains a reg
		reg = None
		for key in self.regtable:
			if key in arg:
				reg = key
		'''
		if reg == None:
			print("This arg sucks: " + str(arg))
		'''
		#memory case
		if arg != reg:
			if reg in (self.writetable).keys():
				if self.writetable[reg] != None:
					self.callAddEdge(reg,num,yan)
		else:
		#if writing to reg, clear shit up
			for key in (self.writetable).keys():
				if reg in key:
					(self.writetable)[reg] = None
		self.writetable[arg] = num
		print("Wrote to: "+ str(arg))
		return


input = open(sys.argv[1])
a = input.readlines()

gen = DFGG()
yan = YAN()
for index in range(len(a)):
	line = a[index]
	if "Function" in line:
		gen.__init__()
		_,_,gen.funcName = (line.partition('`'))
		#hack to get the function name..
		gen.funcName = gen.funcName[:-3]
		print(gen.funcName)
		gen.func_start = index
		gen.doLabels = True
		continue

	if gen.doLabels:
		line = line.rstrip()
		if line[-1] == ':':
			#print(line, 'is label')
			gen.labels[line[:-1]] = index
			print gen.labels

	if "End of function" in line:
		gen.doLabels = False
		gen.func_end = index
		i = gen.func_start + 1
		while(True):
			line = a[i]
			print(line)
			spl = line.split('\t')
			#is it an instruction
			if len(spl) > 1:
				#byte/word operation?
				if '.' in spl[1]:
					inst,_,_ = spl[1].partition('.')
				else:
					inst = spl[1]
				inst = inst.rstrip()
				#is it a jmp?
				if inst == 'jmp':
					print('Jumping to label: '+ str(spl[2]))
					gen.jmpflag = True
					gen.retaddr = i + 1
					i = gen.labels[spl[2].rstrip()] + 1
					continue
				#is it a ret?
				if inst == 'ret':
					#ret from a jmp?
					if gen.jmpflag is True:
						print("Returnning form jmp")
						gen.jmpflag = False
						i = gen.retaddr
						gen.retaddr = 0
						continue
					#we done?
					else:
						break
				if inst in allInst:
					#increment instNumber, flat view
					gen.instNumber += 1
					yan.add_node(gen.instNumber,inst,line)
					gen.instNumberToActual[gen.instNumber] = i
					if inst in twoArg0 or inst in twoArg1 or inst in twoArg2:
						arg0,_,arg1 = (spl[2].rstrip()).partition(', ')
						#read arg0, write arg1
						if inst in twoArg0:
							#we read from reg0, if arg0 is not immediate
							gen.readArg(arg0, gen.instNumber, yan)
							#we wrote to arg1
							#Register case
							gen.writeArg(arg1, gen.instNumber, yan)

						#read arg0, read arg1, write arg1
						if inst in twoArg1:
							#we read from reg0, if arg0 is not immediate
							gen.readArg(arg0, gen.instNumber, yan)
							#we def read from reg1...
							gen.readArg(arg1, gen.instNumber, yan)
							#we wrote to arg1
							gen.writeArg(arg1, gen.instNumber, yan)

						#Read both
						if inst in twoArg2:
							#reg0 can be imm here for cmp
							gen.readArg(arg0, gen.instNumber, yan)
							gen.readArg(arg1, gen.instNumber, yan)

					elif inst in oneArg0 or inst in oneArg1 or inst in oneArg2:
						arg0 = spl[2].rstrip()
						reg0 = None
						for key in gen.regtable:
							if key in arg0:
								reg0 = key

						if reg0 is None:
							#TODO : weird push needs handling...
							print("Does not recognize argument: " + str(arg0))
							i += 1
							continue

						if inst in oneArg0 or inst in oneArg1:
							#do read
							gen.readArg(arg0, gen.instNumber, yan)
						if inst in oneArg0 or inst in oneArg2:		
							#do write
							gen.writeArg(arg0, gen.instNumber, yan)

				else:
					print('Unknown instruction', spl)
			
			i += 1
			if i >= gen.func_end:
				if 'main' in gen.funcName:
					print("Reached end of main function, breaking")
				else:
					print("Something is wrong...Did not return but reached end")
				break

		yan.generate_dot(gen.funcName + ".dot")
		yan.__init__()
		gen.__init__()

	


