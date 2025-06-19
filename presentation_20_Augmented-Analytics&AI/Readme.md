📊 Analysis of the Relationship Between R&D Spend and Profit Using Power BI & Python

This project demonstrates how to integrate Python into Power BI to perform a linear regression analysis based on a CSV file containing startup data.
📥 Prerequisites

    Download Power BI

    Download Anaconda (or simply install Python 3.8)

🛠️ Creating the Python Environment with Anaconda

conda create -n PowerBi python=3.8
conda activate PowerBi

⚙️ Configuring Python in Power BI

    Open Power BI

    Go to File → Options and settings → Options

    Under Python scripting, click Browse

    Select the folder of your PowerBi environment
    (usually under anaconda3/envs/PowerBi/)

📂 Loading a CSV File in Power BI

    Click Get Data → Text/CSV

    Click Transform Data

    In the Power Query Editor, click Run Python Script

    Use the following script to create visualizations:

Example 1: Scatter Plots

`import seaborn as sns
import matplotlib.pyplot as plt

sns.scatterplot(x='Administration', y='Profit', data=dataset)
sns.scatterplot(x='Marketing Spend', y='Profit', data=dataset)
sns.scatterplot(x='R&D Spend', y='Profit', data=dataset)
plt.show()`

Example 2: Pairplot

`import seaborn as sns
import matplotlib.pyplot as plt

sns.pairplot(data=dataset)
plt.show()`

🔍 Full Python Script (Linear Regression Analysis)
📌 Note:

Before your script, Power BI automatically adds:

# dataset = pandas.DataFrame(Administration, Marketing Spend, Profit, R&D Spend, State)
# dataset = dataset.drop_duplicates()

📈 Analysis Script

`import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score, mean_squared_error

# Load the data
dataset = pd.read_csv('50_startups.csv')

# Prepare data
X = dataset[['R&D Spend']] 
y = dataset['Profit']

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

model = LinearRegression()
model.fit(X_train, y_train)

# Predictions
y_test_pred = model.predict(X_test)

# Metrics
print("R² Score:", r2_score(y_test, y_test_pred))
print("MSE:", mean_squared_error(y_test, y_test_pred))

# New Predictions
new_rd_values = [20000, 35000, 50000, 75000, 90000, 105000, 125000, 140000, 155000, 175000]
new_data = pd.DataFrame({'R&D Spend': new_rd_values})
predictions = model.predict(new_data)

# Display Results
prediction_results = pd.DataFrame({
    'R&D_Spend': new_rd_values,
    'Predicted_Profit': predictions
})
print(prediction_results)`


📊 Combined Visualizations

The script includes 6 plots:

    Linear Regression with Train/Test Split

    Residual Analysis

    Actual vs Predicted

    Residual Distribution

    Full Dataset with Predictions

    Prediction Trend Curve

For more details, refer to the .py file or the corresponding cell in your Power BI notebook.
📎 Final Result

A complete visualization in Power BI showing profit predictions based on R&D Spend, including all metrics, plots, and residuals to evaluate the model's performance.
✅ Technologies Used

    Power BI

    Python (via Anaconda)

    Pandas, NumPy

    Seaborn, Matplotlib

    Scikit-learn (Linear Regression)

📁 CSV File

Make sure to use the file named `50_startups.csv`