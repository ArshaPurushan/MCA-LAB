#Seaborn function

import seaborn as sns
import matplotlib.pyplot as plt

# Load the Iris dataset
df = sns.load_dataset('iris')

# Set the aesthetic style
sns.set(style="whitegrid")

# Create a histogram of sepal length
plt.figure(figsize=(10, 6))
sns.histplot(df['sepal_length'], bins=20, kde=True)
plt.title('Histogram of Sepal Length')
plt.xlabel('Sepal Length')
plt.ylabel('Frequency')
plt.show()

# Create a scatter plot of sepal length vs. sepal width
plt.figure(figsize=(10, 6))
sns.scatterplot(data=df, x='sepal_length', y='sepal_width', hue='species')
plt.title('Scatter Plot of Sepal Length vs Sepal Width')
plt.xlabel('Sepal Length')
plt.ylabel('Sepal Width')
plt.show()

# Create a box plot of sepal length by species
plt.figure(figsize=(10, 6))
sns.boxplot(data=df, x='species', y='sepal_length')
plt.title('Box Plot of Sepal Length by Species')
plt.xlabel('Species')
plt.ylabel('Sepal Length')
plt.show()
