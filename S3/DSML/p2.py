# Matplotlib functions

import matplotlib.pyplot as plt
import numpy as np

# Sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)
y2 = np.cos(x)
categories = ['A', 'B', 'C', 'D']
values = [5, 7, 3, 8]
hist_data = np.random.randn(1000)

# Create a new figure
fig, ax = plt.subplots(2, 2, figsize=(12, 10))

# Line plot
ax[0, 0].plot(x, y, label='sin(x)', color='b')
ax[0, 0].plot(x, y2, label='cos(x)', color='r', linestyle='--')
ax[0, 0].set_title('Line Plot')
ax[0, 0].set_xlabel('x')
ax[0, 0].set_ylabel('y')
ax[0, 0].legend()
ax[0, 0].grid(True)

# Scatter plot
ax[0, 1].scatter(x, y, c='g', marker='o', label='sin(x)')
ax[0, 1].set_title('Scatter Plot')
ax[0, 1].set_xlabel('x')
ax[0, 1].set_ylabel('y')
ax[0, 1].legend()
ax[0, 1].grid(True)

# Bar chart
ax[1, 0].bar(categories, values, color='c')
ax[1, 0].set_title('Bar Chart')
ax[1, 0].set_xlabel('Categories')
ax[1, 0].set_ylabel('Values')

# Histogram
ax[1, 1].hist(hist_data, bins=30, color='m', edgecolor='black')
ax[1, 1].set_title('Histogram')
ax[1, 1].set_xlabel('Value')
ax[1, 1].set_ylabel('Frequency')

# Adjust layout
plt.tight_layout()

# Save the figure
plt.savefig('example_plots.png')

# Show the figure
plt.show()
