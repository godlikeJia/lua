util = {}
function util.printTable(t, indent) 
  for k, v in pairs(t) do
    if type(v) == "table" then
      print(indent .. k .. " ==> ")
      util.printTable(v, indent .. "  ")
    else
      print(indent .. k .. " ==> " .. tostring(v))
    end
  end
end

function util.table2string(t)
  if type(t) ~= "table" then
    return tostring(t)
  end

  local tb = {}
  table.insert(tb, "{")
  for k, v in pairs(t) do
    table.insert(tb, k)
    table.insert(tb, "=")
    table.insert(tb, util.table2string(v))
  end
  table.insert(tb, "}")
  return table.concat(tb, " ")
end

function util.LOGGER(...)
  local time = os.date("*t")
  local tb = {}
  
  for i, v in ipairs{...} do
    if type(v) == "table" then
      table.insert(tb, util.table2string(v))
    end
    table.insert(tb, tostring(v))
  end
  
  print(string.format("[%04d-%02d-%02d %02d:%02d:%02d]%s", time.year, time.month, time.day,
                    time.hour, time.min, time.sec, table.concat(tb, " ")))
end
--
--local tt = {a=10, b=20, c={z=10, y=20}}
--util.LOGGER(tt, false, LOGGER)
--print(util.table2string(tt))
return util