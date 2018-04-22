
local function first()
  local fd = io.open("data.txt", "w")
  io.write("hello")
  io.output(fd)
  io.write("io.write\n")

  fd.write(fd, "fd.write\n")
  fd:write("fd:write\n")

  --io.close(fd)
  fd.close(fd)
end

function print(data)
  local fd = io.open("data.txt", "a")
  fd:write(data)
  fd:close()
end

print("ehl")
