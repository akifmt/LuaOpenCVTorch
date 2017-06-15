----------------------------------------------------------------------
-- lua OPENCV HaarCascade KULLANIMI Yuz-Bulur Ornekler 1
----------------------------------------------------------------------





require 'pl'
require 'trepl'
require 'torch'   -- torch
require 'image'   -- to visualize the dataset
require 'nn'      -- provides all sorts of trainable modules/layers

local cv = require 'cv'
require 'cv.objdetect'
require 'cv.imgcodecs' -- reading/writing images
require 'cv.imgproc' -- image processing
require 'cv.highgui' -- GUI
require 'cv.videoio' -- Video input/output

cv.ml = require 'cv.ml' -- Machine Learning

local cascade_path = 'haarcascade_frontalface_default.xml'
local face_cascade = cv.CascadeClassifier{filename=cascade_path}

-- DIGER TEST FOTOGRAFLARI
-- imagePath = "1.png"
-- imagePath = "2.png"
imagePath = "123.jpg"

loadType = cv.IMREAD_UNCHANGED
frame = cv.imread{imagePath, loadType}

   local fx = 0.50  -- rescale factor
   local w = frame:size(2)
   local h = frame:size(1)

   local im2 = cv.resize{src=frame, fx=fx, fy=fx}
   cv.cvtColor{src=im2, dst=im2, code=cv.COLOR_BGR2GRAY}

local faces = face_cascade:detectMultiScale{image = im2}

   for i=1,faces.size do
      local f = faces.data[i]
      local x = f.x/fx
      local y = f.y/fx
      local w = f.width/fx
      local h = f.height/fx
  
  
      cv.rectangle{img=frame, pt1={x, y}, pt2={x + w, y + h}, color={255,0,255,0}}
      
      
      cv.putText{
         img=frame,
         text = 'yuz: ',
         org={x, y},
         fontFace=cv.FONT_HERSHEY_DUPLEX,
         fontScale=1,
         color={255, 255, 0},
         thickness=1
         }
      
      
   end


--goster
cv.imshow {"Yuz Buldu!", frame}

   
   
