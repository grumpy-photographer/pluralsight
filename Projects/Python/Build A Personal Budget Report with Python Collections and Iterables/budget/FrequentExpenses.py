## Count Expressions by Category

# Step 1
from . import Expense

# Step 4
import collections

# Step 7
import matplotlib.pyplot as plt

# Step 2
expenses = Expense.Expenses()

expenses.read_expenses("data/spending_data.csv")

# Step 3
spending_categories = []

for expense in expenses.list:
    spending_categories.append(expense.category)

# Step 4
spending_counter = collections.Counter(spending_categories)

# print(spending_counter)

# Step 5
top5 = spending_counter.most_common(5)

# Step 6
categories, count = zip(*top5)

# Step 7
fig, ax = plt.subplots()

# Step 8
ax.bar(categories, count)
ax.set_title("# of Purchases by Category")

# Step 9
plt.show()
