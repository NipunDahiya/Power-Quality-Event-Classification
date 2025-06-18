import numpy as np
import pywt
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report

# Define the wavelet transform parameters
wavelet = 'db4'  # Choose a wavelet type (e.g., Daubechies 4)
level = 4       # Number of decomposition levels

# Define the power quality event classes and their corresponding labels
event_classes = {
    'sag': 0,
    'swell': 1,
    'harmonics': 2,
    'interruption': 3
}

# Generate sample data for training (replace with your own data)
# Each sample is a vector representing a power quality event
# X contains the feature vectors and y contains the corresponding labels
X = np.random.rand(100, 100)  # Replace with your own feature vectors
y = np.random.choice(list(event_classes.values()), size=100)  # Replace with your own labels

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Apply wavelet transform to the training and testing sets
def apply_wavelet_transform(data):
    transformed_data = []
    for sample in data:
        coeffs = pywt.wavedec(sample, wavelet, level=level)
        flattened_coeffs = np.concatenate(coeffs)
        transformed_data.append(flattened_coeffs)
    return np.array(transformed_data)

X_train_transformed = apply_wavelet_transform(X_train)
X_test_transformed = apply_wavelet_transform(X_test)

# Train the KNN classifier
knn = KNeighborsClassifier(n_neighbors=5)  # Choose the number of neighbors (k) as desired
knn.fit(X_train_transformed, y_train)

# Predict labels for the testing set
y_pred = knn.predict(X_test_transformed)

# Evaluate the classifier performance
print(classification_report(y_test, y_pred, target_names=event_classes.keys()))
