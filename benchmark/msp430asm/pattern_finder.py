import sys
from sets import Set


MAX_INPUT_SIZE = 2
MIN_PATTERN_SIZE = 2



class Pattern:
	def __init__(self):
		self.nodes = []
		self.topo = []
		self.size = 0
		self.pattern_str = [] # list of strings
	def topological_sort(self):
		while len(self.topo) != len(self.nodes):
			next_level = []
			for n in self.nodes:
				if n not in self.topo and all(i in self.topo or i not in self.nodes for i in n.inNodes):
					next_level.append(n)
			self.topo.extend(next_level)
	def get_pattern(self):
		labels = {}
		count = {}
		self.topological_sort()
		for n in self.topo:
			for e in n.outEdges:
				if e.target in self.nodes:

					if e.source.opcode == None:
						label1 = e.source.instruction
					elif e.source in labels:
						label1 = labels[e.source]
					else:
						op1 = e.source.opcode
						if op1 not in count:
							label1 = op1 + "_0"
							count[op1] = 1
						else:
							label1 = op1 + "_" + str(count[op1])
							count[op1] += 1
						labels[e.source] = label1

					if e.target.opcode == None:
						label2 = e.target.instruction
					elif e.target in labels:
						label2 = labels[e.target]
					else:
						op2 = e.target.opcode
						if op2 not in count:
							label2 = op2 + "_0"
							count[op2] = 1
						else:
							label2 = op2 + "_" + str(count[op2])
							count[op2] += 1
						labels[e.target] = label2
					edge_str = "	" + label1 + " -> " + label2 + "\n"
					self.pattern_str.append(edge_str)

	def print_pattern(self):
		if self.pattern_str == []:
			self.get_pattern()
		for line in self.pattern_str:
			print line
		print "\n"

	def write_pattern(self, fd):
		if self.pattern_str == []:
			self.get_pattern()
		for line in self.pattern_str:
			fd.write(line)
		fd.write("\n")

class Node:
	def __init__(self, idx, op, i):
		self.index = idx
		self.opcode = op
		self.instruction = i
		self.inNodes = []
		self.outNodes = []
		self.inEdges = []
		self.outEdges = []
		p = Pattern()
		self.patterns = [p] # list of patterns

class Edge:
	def __init__(self, s, t):
		self.source = s
		self.target = t

class DAG:
	def __init__(self):
		self.nodes = []
		self.edges = []
		self.topo = []
		self.mapping = {}
	def add_node(self, idx, op, i):
		n = Node(idx, op, i)
		self.mapping[idx] = n
		self.nodes.append(n)
	def add_edge(self, idxs, idxt):
		s = self.mapping[idxs]
		t = self.mapping[idxt]
		if t in s.outNodes:
			return
		e = Edge(s, t)
		self.edges.append(e)
		s.outEdges.append(e)
		t.inEdges.append(e)
		if s not in t.inNodes:
			t.inNodes.append(s)
		if t not in s.outNodes:
			s.outNodes.append(t)
	def topological_sort(self):
		while len(self.topo) != len(self.nodes):
			next_level = []
			for n in self.nodes:
				if n not in self.topo and all(i in self.topo for i in n.inNodes):
					next_level.append(n)
			self.topo.extend(next_level)
	
	def same_pattern(self, p1, p2):
		if len(p1.nodes) != len(p2.nodes):
			return False
		if not all(n in p2.nodes for n in p1.nodes):
			return False
		if not all(n in p1.nodes for n in p2.nodes):
			return False
		return True

	def generate_dot(self, filename):
		f = open(filename, 'w')
		f.write("digraph G {\ncompound=true\nlabel=\"Black edges - dataflow, red edges - control flow\"")
		for n in self.nodes:
			f.write("\"" + str(n.index) + "\" [label = \"" + n.instruction + "\"]\n")
		for e in self.edges:
			f.write("\"" + str(e.source.index) + "\" -> \"" + str(e.target.index) + "\"\n")
		f.write("}\n")

	def extract_pattern(self, filename):
		write_patterns(find_patterns(self), filename)

def get_input_size(p):
	inputs = Set([])
	for n in p.nodes:
		for a in n.inNodes:
			if a not in p.nodes:
				inputs.add(a)
	return len(inputs)

def find_patterns(dag):
	all_patterns = []
	dag.topological_sort()
	for curr in dag.topo:
		if len(curr.inNodes) == 3:
			parentA = curr.inNodes[0]
			parentB = curr.inNodes[1]
			parentC = curr.inNodes[2]
			for pA in parentA.patterns:
				for pB in parentB.patterns:
					for pC in parentC.patterns:
						p = Pattern()
						p.nodes = list(set(pA.nodes) | set(pB.nodes) | set(pC.nodes) | set([curr]))
						p.size = get_input_size(p)
						if all(not dag.same_pattern(p, i) for i in curr.patterns):
							curr.patterns.append(p)
							if len(p.nodes) >= MIN_PATTERN_SIZE and p.size <= MAX_INPUT_SIZE \
							and all(not dag.same_pattern(p, i) for i in all_patterns):
								all_patterns.append(p)
		elif len(curr.inNodes) == 2:
			parentA = curr.inNodes[0]
			parentB = curr.inNodes[1]
			for pA in parentA.patterns:
				for pB in parentB.patterns:
					p = Pattern()
					p.nodes = list(set(pA.nodes) | set(pB.nodes) | set([curr]))
					p.size = get_input_size(p)
					if all(not dag.same_pattern(p, i) for i in curr.patterns):
						curr.patterns.append(p)
						if len(p.nodes) >= MIN_PATTERN_SIZE and p.size <= MAX_INPUT_SIZE \
						and all(not dag.same_pattern(p, i) for i in all_patterns):
							all_patterns.append(p)
		elif len(curr.inNodes) == 1:
			parentA = curr.inNodes[0]
			for pA in parentA.patterns:
				p = Pattern()
				p.nodes = pA.nodes + [curr]
				p.size = get_input_size(p)
				if all(not dag.same_pattern(p, i) for i in curr.patterns):
					curr.patterns.append(p)
					if len(p.nodes) >= MIN_PATTERN_SIZE and p.size <= MAX_INPUT_SIZE \
					and all(not dag.same_pattern(p, i) for i in all_patterns):
						all_patterns.append(p)
		elif len(curr.inNodes) == 0:
			p = Pattern()
			p.nodes = [curr]
			curr.patterns.append(p)
		else:
			print "Invalid number of in-neighbors %i at node %s" % (len(curr.inNodes), curr.instruction)

	return all_patterns

def write_patterns(patterns, filename):
	fd = open(filename, 'w')
	for i in range(0, len(patterns)):
		fd.write("pattern " + str(i) + ":\n")
		patterns[i].write_pattern(fd)

