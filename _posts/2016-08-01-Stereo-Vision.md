---
layout: post
title: Stereo Vision
---
# {{ page.title }}

## 1. Target
Calculate disparity of a pair of stereo images. Use window based searching algorithm and try different window size. If you choose to setup your own stereo vision system, calculate the actual depth according to the length of the baseline.   

## 2.Process
* Download pictures and test them
Download sample pictures from http://vision.middlebury.edu/stereo/data/. There some notes below:
	* Download the 2005 datasets if you want to figure out the depth from disparity because the 2005 dataset provide the baseline length and focal length. For the 2005 dataset, the focal length is 3740 pixels, and the baseline is 160mm.
	* There are three kinds of resolutions, full size, half size and third size. Notably, in the half-size and third-size versions, the intensity values of the disparity maps need to be divided by 2 and 3, respectively. To map the disparities into 3D coordinates, add the value in "dmin.txt" to each disparity value, since the images and disparity maps were cropped.
	* Just to be sure, match two pictures by Harris corner to ensure they have be calibrated.
In this experiment, one of the results is shown below,""

{{ page.date | date_to_string }}
