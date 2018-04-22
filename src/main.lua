point = {
  x = 10,
  y = 20
}

point_meta = {
  __add = function(a, b) 
      return {x = a.x + b.x, y = a.y + b.y}
  end
}
setmetatable(point,point_meta)

point = point + {x=1, y=2}
print(point.x, point.y)  -- 11 22
print(point[x], point[y]) -- nil nil
print(point['x'], point['y']) -- 11 22
