local table = {
  insert = function(t, pos, value)
    -- Insert the value at the specified position in the table
    table.insert(t, pos, value)
  end,
  remove = function(t, pos)
    -- Remove the element at the specified position from the table
    table.remove(t, pos)
  end
}
local ipairs = function(t, func)
  for i, v in pairs(t) do
    if type(v) == "table" then
      ipairs(v, func)
    else
      func(i, v)
    end
  end
end
function print(...)
  -- Print the arguments to the console
  local args = {...}
  for _, arg in pairs(args) do
    io.write(tostring(arg), " ")
  end
  io.write("\n")
end
function coroutine_recursion(level)
  local co = coroutine.create(function()
    if level > 0 then
      coroutine_recursion(level - 1)
    end
  end)
  local status, result = coroutine.resume(co)
  return result
end
coroutine_recursion(10000)