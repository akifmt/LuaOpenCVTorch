----------------------------------------------------------------------
-- lua OPENCV KULLANIMI Ornekler 1
----------------------------------------------------------------------

require 'pl'
require 'trepl'
require 'torch'   -- torch
require 'image'   -- to visualize the dataset
require 'nn'      -- provides all sorts of trainable modules/layers

local cv = require 'cv'
require 'cv.imgcodecs' -- reading/writing images
require 'cv.imgproc' -- image processing
require 'cv.highgui' -- GUI
require 'cv.videoio' -- Video input/output

cv.ml = require 'cv.ml' -- Machine Learning

-- Reading/Writing Image
imagePath = "1.png"
loadType = cv.IMREAD_UNCHANGED
src = cv.imread{imagePath, loadType}
print(src:size()) -- 1.png size yazdir

dst = src:clone()
cv.cvtColor{src, dst, cv.COLOR_BGR2YUV}
print(dst:size()) -- size yazdir

-- Image Resize
dst = cv.resize{src, {1024, 1024}, interpolation=cv.INTER_CUBIC}
print(dst:size()) -- size yazdir

cv.imshow {"1", src}
cv.imshow {"2", dst}




