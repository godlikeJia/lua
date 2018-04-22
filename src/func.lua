-- 可变参数函数

function add(...)
  print(tostring(...))
  local sum = 0
  for i, v in ipairs{...} do
    sum = sum + v
  end
  return sum
end

print(add(1, 2, 3))