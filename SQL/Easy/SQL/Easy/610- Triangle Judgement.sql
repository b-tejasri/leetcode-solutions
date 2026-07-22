select x,y,z, triangle = case when x+y > z and y+z > x and x+z>y then 'Yes' else 'No' end
from Triangle
