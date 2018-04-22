-- global variable

--for k, v in pairs(_G) do
--  print(k, "==>", v)
--end

function printTable(t, indent) 
  for k, v in pairs(t) do
    if type(v) == "table" then
      print(indent .. k .. " ==> ")
      printTable(v, indent .. "  ")
    else
      print(indent .. k .. " ==> " .. v)
    end
  end
end
t = {x = 10,
y = 20,
z = {a="hello", b = "world"}}

printTable(t, "")

a1 = 1 
a2 = 2
a3 = 3

for i=1,3 do
  print(loadstring("return a" .. i)())
end



-- 全局变量笔误，引发错误避免
setmetatable(_G, {
  __newindex = function(_, n) 
    error("[mine]attempt to write undeclared variable" .. n, 2)
  end,
  __index = function(_, n)
    error("[mine]attempt to read undeclared variable" .. n, 2)
  end
})
-- a = 1 -- write error
-- print(a) -- read error 

function declare(name, initval)
  rawset(_G, name, initval or false)
end

--_G['a'] = 10
declare('a', 100)
print(a)