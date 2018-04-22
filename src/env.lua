print(1)

setfenv(1, {
  print = function(n) 
    io.write(n)
  end
})

print(1)
print(1)
