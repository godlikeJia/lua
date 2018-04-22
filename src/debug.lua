local util = require("util")

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

print(debug.getinfo(2, "S").what)


printTable(debug.getinfo(2, "S"), "")

print("xxxxxxxxxxxxxxxxxx")
function log(msg)
  local info = debug.getinfo(2)
  for k, v in pairs(info) do
    print(k ,v)
  end
end

util.LOGGER(1, 2, "hello")