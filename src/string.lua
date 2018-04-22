function operatorConcat(str, count)
    local result = ""
    for i=1,count do
        result = result .. str
    end
    return result
end

function tableConcat(str, count)
    local tbl = {}
    for i=1,count do
        table.insert(tbl, str)
    end
    return table.concat(tbl)
end


local str = "a"
local count = 100000

local start_time = os.clock()
operatorConcat(str,count)
print("operatorConcatTime:" .. os.clock() - start_time)

start_time = os.clock()
tableConcat(str,count)
print("tableConcatTime:" .. os.clock() - start_time)