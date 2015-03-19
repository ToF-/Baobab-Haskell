module Drawing
where

data ViewPort = ViewPort Double Double Double Double
    deriving (Eq, Show)

type Line = [Point]
type Point = (Double,Double)

vMax = 100000
vMin = -vMax

viewPort :: [Line] -> ViewPort
viewPort lines = ViewPort (x0-marginX) (y0-marginY) (x1+marginX) (y1+marginY)
    where marginX = abs (x1 - x0) * 0.05
          marginY = abs (y1 - y0) * 0.05  
          (x0,y0,x1,y1) = foldr findLimits (vMax,vMax,vMin,vMin) $ concat lines
          findLimits (x,y) (xMin,yMin,xMax,yMax) = (min xMin x, min yMin y, max xMax x, max yMax y)
