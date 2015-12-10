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
oneArg0 = ['rrc','rra','swpb','sxt','clrc','rla']
#read src
oneArg1 = ['push']
#write src
oneArg2 = ['pop']
#jump/br instructions
jmpInst = ['call','jc','jhs','br','ret','jmp','jne','jge','jl','jeq','jlo']

allInst = []
allInst.extend(twoArg0)
allInst.extend(twoArg2)
allInst.extend(twoArg1)
allInst.extend(oneArg0)
allInst.extend(oneArg1)
allInst.extend(oneArg2)
allInst.extend(jmpInst)

class DFGG:
	def __init__(self):
		self.labels = {}
		self.func_start = 0
		self.func_end = 0
		self.doLabels = False
		self.jmpflag = False
		self.retaddr = 0
		self.regtable = defaultdict(None)
		self.regtable = {'r0':None,'r1':None,'r2':None,'r3':None,'r4':None,'r5':None,'r6':None,'r7':None,
						'r8':None,'r9':None,'r10':None,'r11':None,'r12':None,'r13':None,'r14':None,'r15':None}
		#count number of insts
		self.instNumber = -1


	def callAddEdge(self, reg, num, yan=YAN()):
		yan.add_edge(gen.regtable[reg], num)
		print("dependency from instruction: "+ a[int(gen.regtable[reg])])

input = open(sys.argv[1])
a = input.readlines()

gen = DFGG()
yan = YAN()
for index in range(len(a)):
	line = a[index]
	if "Function" in line:
		gen.__init__()
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
					if inst in twoArg0 or inst in twoArg1 or inst in twoArg2:
						arg0,_,arg1 = (spl[2].rstrip()).partition(', ')
						reg0 = None
						reg1 = None
						for reg in (gen.regtable).keys():
							if reg in arg0:
								reg0 = reg
							if reg in arg1:
								reg1 = reg
						if reg0 is None:
							if arg0[0] == '#':
								reg0 = 'imm'
							else:
								print("Does not recognize argument: " + str(arg0))
						#read arg0, write arg1
						if inst in twoArg0:
							#we read from reg0, if arg0 is not immediate
							if reg0 is not 'imm':
								if gen.regtable[reg0] is not None:
									gen.callAddEdge(reg0, gen.instNumber, yan)
							#we wrote to arg1
							if reg1 == arg1:
								gen.regtable[reg1] = gen.instNumber
								print("Wrote to: "+ str(reg1))
								#TODO handle memory write cases for re-read
							else:
								#read
								if gen.regtable[reg1] is not None:
									gen.callAddEdge(reg1, gen.instNumber, yan)

						#read arg0, read arg1, write arg1
						if inst in twoArg1:
							#we read from reg0, if arg0 is not immediate
							if reg0 is not 'imm':
								if gen.regtable[reg0] is not None:
									gen.callAddEdge(reg0, gen.instNumber, yan)
							#we def read from reg1...
							if gen.regtable[reg1] is not None:
								gen.callAddEdge(reg1, gen.instNumber, yan)
							#we wrote to arg1
							if reg1 == arg1:
								gen.regtable[reg1] = gen.instNumber
								print("Wrote to: "+ str(reg1))
							#TODO handle memory write cases for re-read

						#Read both
						if inst in twoArg2:
							if gen.regtable[reg0] is not None:
								gen.callAddEdge(reg0, gen.instNumber, yan)
							if gen.regtable[reg1] is not None:
								gen.callAddEdge(reg1, gen.instNumber, yan)
					elif inst in oneArg0 or inst in oneArg1 or inst in oneArg2:
						arg0 = spl[2].rstrip()
						reg0 = None
						for reg in (gen.regtable).keys():
							if reg == arg0:
								reg0 = reg
						if reg0 is None:
							print("Does not recognize argument: " + str(arg0))
						if inst in oneArg0 or inst in oneArg1:
							#do read
							if gen.regtable[reg0] is not None:
								gen.callAddEdge(reg0, gen.instNumber, yan)
						if inst in oneArg0 or inst in oneArg2:		
							#do write
							gen.regtable[reg0] = gen.instNumber
							print("!!!Wrote to: "+ str(reg0))

				else:
					print('Unknown instruction', spl)
			
			i += 1
			if i >= gen.func_end:
				print("Something is wrong...Did not return but reached end")
				break

yan.generate_dot(sys.argv[1][:-2] + ".dot")
	


