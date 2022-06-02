# %%
import sys
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import classification_report

# %%
def build_model(classifier_fn, features, label, dataset, test_frac=0.2):
    X = dataset[features]
    y = dataset[label]

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_frac)
    model = classifier_fn(X_train, y_train)
    y_pred = model.predict(X_test)
    print("Featured used: ", features)
    summarize_classification(y_test, y_pred)

    return {
        "model": model,
        "X_train": X_train,
        "y_train": y_train,
        "X_test": X_test,
        "y_test": y_test,
        "y_pred": y_pred,
    }


# %%
def summarize_classification(y_test, y_pred):
    report = classification_report(y_test, y_pred)
    print("Classification Report")
    print("------" * 10)
    print(report)


# %%
def logistic_fn(X_train, y_train, penalty="l2", C=1.0, max_iter=1000):
    model = LogisticRegression(penalty=penalty, C=C, max_iter=max_iter, solver="lbfgs")
    model.fit(X_train, y_train)
    return model


# %%
def decision_tree_fn(X_train, y_train, max_depth=3):
    model = DecisionTreeClassifier(max_depth=max_depth)
    model.fit(X_train, y_train)
    return model


# %%
def main():
    data = pd.read_csv("./datasets/advertising_cleaned.csv")
    features = ["TimeSpent", "Age", "AreaIncome", "DailyInternetUsage", "Male"]
    try:
        model_type = sys.argv[1]

        if len(sys.argv) > 2:
            features = sys.argv[2:]

    except error:
        print("Classifier model not specified!")

    print("Running classifier: ", model_type)

    if model_type == "logistic_regression":
        build_model(logistic_fn, features, "Clicked", data)
    elif model_type == "decision_tree":
        build_model(decision_tree_fn, features, "Clicked", data)
    else:
        print("Invalid classifier model")


# %%
if __name__ == "__main__":
    main()
