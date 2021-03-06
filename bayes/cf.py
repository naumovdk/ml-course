from collections import Counter
from math import exp, log
 
 
k = int(input())
l = list(map(int, input().split()))
a = int(input())
 
x_count = set()
c_count = Counter()
data = [Counter() for _ in range(k)]
n = int(input())
 
for i in range(n):
	c, _, *xs = input().split()
	c = int(c) - 1
	xs = list(set(xs))
 
	for x in xs:
		x_count.add(x)
		data[c][x] += 1
	c_count[c] += 1 
 
p = [{x: (data[c][x] + a) / (c_count[c] + a * 2) for x in x_count} for c in range(k)]
pos = [{x: log((data[c][x] + a) / (c_count[c] + a * 2)) for x in x_count} for c in range(k)]
neg = [{x: log(1 - ((data[c][x] + a) / (c_count[c] + a * 2))) for x in x_count} for c in range(k)]
 
 
def calc_prob_of_xs_on_cond_of_c(xs, c):
	if c_count[c] == 0:
		return 0
	res = log(c_count[c] / n)
	for w in p[c]:
		if w in xs:
			res += pos[c][w]
		else:
			res += neg[c][w]
	return exp(res) * l[c]
 
 
for i in range(int(input())):
	_, *xs = input().split()
	xs = list(set(xs))
	denum = sum([calc_prob_of_xs_on_cond_of_c(xs, c) for c in range(k)])
	for c in range(k):
		num = calc_prob_of_xs_on_cond_of_c(xs, c)
		ans = num / denum if denum != 0 else 1
		print(ans	, end=' ')
	print()