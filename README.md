# Offline-Handwritten-SIgnature-Verification
Aim: 
To compare 2 images containing signatures and to verify if the signature in first image matches the second image.

Analysis: 

•	First image is cropped manually, followed by converting the image to grey scale.

•	Image is then applied with Sobel filter’s 1 and 2. The result is then used to calculate the absolute value of gradient (Intensity) and phase value.

•	The number of elementary vector’s is 8, using which the value respectively for e0 till e7 is decided between 0 to 2PI.

•	Each pixel’s tuple values of an 81x8 image is summed and stored in a matrix for comparison purpose.

•	The above steps are repeated for the second image and the values in both matrices is compared to verify if the signature is authentic or not.

# Requirements
2 Images

Processing IDE

Basics of Java Programming


# Result:
1.	2 Images of same type, Result=1

2.	2 Images of different type, Result=nearing 0

3.	2 Images with different dimension, Result is almost closer to 1.
