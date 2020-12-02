import numpy as np

m, k, h = map(int, input().split())
n = int(input())
x_train = np.array()
y_train = np.array()
for i in range(n):
	*x, y = map(int, input().split())
	x_train.append(x)
	y_train.append(y)

class Node:
	def __init__(left=None, right=None, index=None, threshhold=None, h=None):
		self.left = left
		self.right = right
		self.index = index
		self.threshhold = threshhold
		self.h = h

	def 