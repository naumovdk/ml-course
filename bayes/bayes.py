from collections import Counter
from math import exp, log
from sklearn.base import BaseEstimator

class Bayes(BaseEstimator):
	def __init__(self, k=2, lambdas=[1, 1], alpha=1, eps=1e-35):
		self.k = k
		self.lambdas = lambdas
		self.alpha = alpha

		self.x_count = set()
		self.c_count = Counter()
		self.p = []
		self.eps = eps	

	
	def fit(self, x_train, y_train):
		data = [Counter() for _ in range(self.k)]
		for xs, c in zip(x_train, y_train):
			for x in set(xs):
				self.x_count.add(x)
				data[c][x] += 1
			self.c_count[c] += 1 
		
		self.p   = [{x:         (data[c][x] + self.alpha) / (self.c_count[c] + self.alpha * 2)  for x in self.x_count} for c in range(self.k)]
		self.pos = [{x: log(    (data[c][x] + self.alpha) / (self.c_count[c] + self.alpha * 2)) for x in self.x_count} for c in range(self.k)]
		self.neg = [{x: log(1 - (data[c][x] + self.alpha) / (self.c_count[c] + self.alpha * 2)) for x in self.x_count} for c in range(self.k)]


	def calc_prob_of_xs_on_cond_of_c(self, xs, c):
		if self.c_count[c] == 0:
			return 0
		res = log(self.c_count[c] / sum(self.c_count.values()))
		for x in self.p[c]:
			if x in xs:
				res += self.pos[c][x]
			else:
				res += self.neg[c][x]
		return exp(res) * l[c]


	def predict_one(self, xs):
		xs = set(xs)
		denum = sum([self.calc_prob_of_xs_on_cond_of_c(xs, c) for c in range(self.k)])
		res = []
		for c in range(self.k):
			num = self.calc_prob_of_xs_on_cond_of_c(xs, c)
			res.append(num / denum if denum != 0 else 1)
		return res


	def predict(self, xs_test):
		return list(map(self.predict_one, xs_test))


if __name__ == '__main__':
	k = int(input())
	l = list(map(int, input().split()))
	a = int(input())

	x_train = []
	y_train = []
	n = int(input())
	for i in range(n):
		c, _, *xs = input().split()
		c = int(c) - 1
		xs = list(set(xs))
		y_train.append(c)
		x_train.append(xs)

	x_test = []
	m = int(input())
	for i in range(m):
		_, *xs = input().split()
		x_test.append(xs)

	clf = Bayes(k, l, a)
	clf.fit(x_train, y_train)
	for v in clf.predict(x_test):
		print(' '.join(map(str, v)))