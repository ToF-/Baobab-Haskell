module Drawing
where

data ViewPort = ViewPort Double Double Double Double
    deriving (Eq, Show)

type Line = [Point]
type Point = (Double,Double)

viewPort :: [Line] -> ViewPort
viewPort [[(x0,y0),(x1,y1)]] = ViewPort (x0-xMargin) (y0-yMargin) (x1+xMargin) (y1+yMargin)
    where xMargin = abs (x1 - x0) * 0.05
          yMargin = abs (y1 - y0) * 0.05  
