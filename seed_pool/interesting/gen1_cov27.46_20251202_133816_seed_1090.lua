function recursive_variadic_function(...)
  if ... then
    print(...)
    recursive_variadic_function(...)
  end
end
local t = {}
setmetatable(t, {__gc = function(self) print("GC triggered") end})
collectgarbage()  -- Force garbage collection