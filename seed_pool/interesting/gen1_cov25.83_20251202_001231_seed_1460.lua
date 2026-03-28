function multi_return(a, b)
  return a, b, a + b
end
local x, y, z = multi_return(10, 20)
print(x, y, z)  -- Output: 10  20  30