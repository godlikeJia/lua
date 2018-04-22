local util = require("util")

local time = os.date("*t")
util.printTable(time, "")


print(string.format("%04d-%02d-%02d %02d:%02d:%02d", time.year, time.month, time.day,
                    time.hour, time.min, time.sec))