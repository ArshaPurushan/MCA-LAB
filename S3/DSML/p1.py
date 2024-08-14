# Numpy functions

import numpy as np


arr = np.array([1, 2, 3, 4, 5])
arr1 = np.array([10, 9, 8, 7, 6])

# Mathematical operations
squared = np.square(arr)
mean_val = np.mean(arr)
add = np.add(arr, arr1)

# Reshape and concatenate
reshaped = arr.reshape((5, 1))
concatenated = np.concatenate((reshaped, reshaped), axis=1)

print("Original array:", arr)
print("Squared values:", squared)
print("Mean value:", mean_val)
print("Reshaped array:\n", reshaped)
print("Concatenated array:\n", concatenated)
print("add to array:\n", add)

print("Version: ", np.__version__)
