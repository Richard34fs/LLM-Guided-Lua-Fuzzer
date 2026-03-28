function recursive_variadic(...)
  local args = {...}
  if #args == 0 then
    return "No more arguments"
  else
    return "Argument: " .. table.remove(args, 1) .. "\n" .. recursive_variadic(unpack(args))
  end
end

local t = {}
setmetatable(t, {__gc = function() print("Garbage collected") end})
t = nil -- Force garbage collection
collectgarbage()