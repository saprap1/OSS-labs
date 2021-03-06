'''
Following this tutorial: https://www.tensorflow.org/tutorials/keras/basic_classification
'''
from __future__ import absolute_import, division, print_function, unicode_literals

# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
from PIL import ImageOps


def plot_image(i, predictions_array, true_label, img):
  predictions_array, true_label, img = predictions_array[i], true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])
  
  plt.imshow(img, cmap=plt.cm.binary)
  
  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'
  
  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

def plot_value_array(i, predictions_array, true_label):
  predictions_array, true_label = predictions_array[i], true_label[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)
  
  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')




print(tf.__version__)

fashion_mnist = keras.datasets.fashion_mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()
# test_images.clear()
# test_labels.clear()

# im = Image.open("sandal-1.PNG")
# im_gray = ImageOps.grayscale(im)
# im_gray_size = im_gray.resize((28,28))

# im2 = Image.open("sandal-2.PNG")
# im2_gray = ImageOps.grayscale(im2)
# im2_gray_size = im2_gray.resize((28,28))

# im3 = Image.open("sandal-3.PNG")
# im3_gray = ImageOps.grayscale(im3)
# im3_gray_size = im3_gray.resize((28,28))


# test_images = [im, im2, im3]
# test_labels = ["sandal", "sandal", "sandal"]


class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat', 'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

print("training images shape:", train_images.shape)
print("length of train_labels:", len(train_labels))
print("training labels:", train_labels)
print("testing images shape:", test_images.shape)
print("length of test_labels:", len(test_labels))

# PREPROCESS THE DATA...
plt.figure()
plt.imshow(train_images[0])
plt.colorbar()
plt.grid(False)
#plt.show()

train_images = train_images / 255.0
test_images = test_images / 255.0

plt.figure(figsize=(10,10))
for i in range(25):
    plt.subplot(5,5,i+1)
    plt.xticks([])
    plt.yticks([])
    plt.grid(False)
    plt.imshow(train_images[i], cmap=plt.cm.binary)
    plt.xlabel(class_names[train_labels[i]])
#plt.show()

# BUILD THE MODEL...
# layers
model = keras.Sequential([
    keras.layers.Flatten(input_shape=(28, 28)),
    keras.layers.Dense(128, activation=tf.nn.relu),
    keras.layers.Dense(10, activation=tf.nn.softmax)
])
#compile
model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# TRAIN THE MODEL...
model.fit(train_images, train_labels, epochs=5)

# EVALUATE ACCURACY...
test_loss, test_acc = model.evaluate(test_images, test_labels)
print('Test accuracy:', test_acc)

# MAKE PREDICTIONS...
predictions = model.predict(test_images)
print("First prediction", predictions[0])
print("Which label has the highest confidence?", np.argmax(predictions[0]))
print("What is the test label? If it matches, the prediction is correct.", test_labels[0])

'''
i = 0
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(i, predictions, test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(i, predictions,  test_labels)
# plt.show()

i = 12
plt.figure(figsize=(6,3))
plt.subplot(1,2,1)
plot_image(i, predictions, test_labels, test_images)
plt.subplot(1,2,2)
plot_value_array(i, predictions,  test_labels)
#plt.show()
'''
# Plot the first X test images, their predicted label, and the true label
# Color correct predictions in blue, incorrect predictions in red
'''
num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, predictions, test_labels, test_images)
  plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plot_value_array(i, predictions, test_labels)
print("0-11")
plt.show()
'''
'''
num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, predictions, test_labels, test_images)
  plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plot_value_array(i, predictions, test_labels)
print("9000-9014")
plt.show()

# Grab an image from the test dataset
img = test_images[0]
print("shape of first test image", img.shape)

# Add the image to a batch where it's the only member.
img = (np.expand_dims(img,0))
print(img.shape)

# Predict the image
predictions_single = model.predict(img)
print(predictions_single)

plot_value_array(0, predictions_single, test_labels)
plt.xticks(range(10), class_names, rotation=45)
#plt.show()

prediction_result = np.argmax(predictions_single[0])
print("prediction result", prediction_result)
'''

im = Image.open("sandal-1.PNG")
im_gray = ImageOps.grayscale(im)
im_gray_size = im_gray.resize((28,28))
im_gray_size.save("sandal-1-adjust.jpg")
img1 = (255 - np.reshape(im_gray_size, (28,28)))/255.0

# print(img1.shape)

im2 = Image.open("sandal-2.PNG")
im2_gray = ImageOps.grayscale(im2)
im2_gray_size = im2_gray.resize((28,28))
im2_gray_size.save("sandal-2-adjust.jpg")
img2 = (255 - np.reshape(im2_gray_size, (28,28)))/255.0

im3 = Image.open("sandal-3.PNG")
im3_gray = ImageOps.grayscale(im3)
im3_gray_size = im3_gray.resize((28,28))
im3_gray_size.save('sandal-3-adjust.jpg')
img3 = (255 - np.reshape(im3_gray_size, (28,28)))/255.0
'''
imgs = [img1, img2, img3]
pred = model.predict(imgs)

plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, pred, test_labels, test_images)
  plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plot_value_array(i, pred, test_labels)
# print("9000-9014")
plt.show()
'''
# Grab an image from the test dataset
# img1.show()
# img = img1
# print("shape of first test image", img.shape)

# img.show()

# Add the image to a batch where it's the only member.
img1 = (np.expand_dims(img1,0))
print(img1.shape)

# Predict the image
predictions_single = model.predict(img1)
print(predictions_single)

plot_value_array(0, predictions_single, test_labels)
plt.xticks(range(10), class_names, rotation=45)
#plt.show()

prediction_result = np.argmax(predictions_single[0])
print("prediction result for sandal 1...", prediction_result, class_names[prediction_result])


img2 = (np.expand_dims(img2,0))
print(img1.shape)

# Predict the image
predictions_single = model.predict(img2)
print(predictions_single)

plot_value_array(0, predictions_single, test_labels)
plt.xticks(range(10), class_names, rotation=45)
#plt.show()

prediction_result = np.argmax(predictions_single[0])
print("prediction result for sandal 2...", prediction_result, class_names[prediction_result])


img3 = (np.expand_dims(img3,0))
print(img1.shape)

# Predict the image
predictions_single = model.predict(img3)
print(predictions_single)

plot_value_array(0, predictions_single, test_labels)
plt.xticks(range(10), class_names, rotation=45)
#plt.show()

prediction_result = np.argmax(predictions_single[0])
print("prediction result for sandal 3...", prediction_result, class_names[prediction_result])