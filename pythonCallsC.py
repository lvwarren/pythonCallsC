import numpy as np
import matplotlib.pyplot as plt
import math
import vmath

print(vmath)
print(dir(vmath))

S = \
	[ 
		"vmath.sqrt_(    2    )",
		"vmath.sin_ (    0    )",
		"vmath.cos_ (    0    )",
		"vmath.tan_ (    0    )",
		"vmath.sin_ (math.pi/4)",
		"vmath.cos_ (math.pi/4)",
		"vmath.tan_ (math.pi/4)",
	]

length_of_longest_string = len(max(S, key=len))

print(length_of_longest_string)

for item in S:
	pad_string = " " * (length_of_longest_string - len(item))
	print(item + pad_string + ":" + format(eval(item), '9.6f'))


x = np.arange(-1, 10, 0.001)
y = np.empty_like(x)
vmath.Sqrt_(x, y)

plt.xlim(-1, 10)
plt.ylim(-1, 10)
plt.plot(x, y)
plt.show()

x = np.arange(0, 2 * np.pi, 0.001)
y = np.empty_like(x)
vmath.Sin_(x, y)

plt.xlim(0, 2*math.pi)
plt.ylim(-math.pi, math.pi)
plt.plot(x, y)
plt.show()

x = np.arange(0, 2 * np.pi, 0.001)
y = np.empty_like(x)
vmath.Cos_(x, y)

plt.xlim(0, 2*math.pi)
plt.ylim(-math.pi, math.pi)
plt.plot(x, y)
plt.show()

x = np.arange(0, 2 * np.pi, 0.001)
y = np.empty_like(x)
vmath.Tan_(x, y)

plt.xlim(0, 2*math.pi)
plt.ylim(-math.pi, math.pi)
plt.plot(x, y)
plt.show()
