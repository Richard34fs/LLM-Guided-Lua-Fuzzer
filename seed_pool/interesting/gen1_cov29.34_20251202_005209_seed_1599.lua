function test_stack_limit(...)
  local args = {...}
  if #args > 0 then
    print("Arguments left to process:", #args)
    test_stack_limit(unpack(args))
  else
    print("Stack limit reached!")
  end
end
local t = {}
local mt = {
  __add = function(a, b)
    return a.value + b.value
  end,
  __call = function(t, ...)
    local args = {...}
    if #args > 0 then
      print("Arguments left to process:", #args)
      t(...)
    else
      print("Stack limit reached!")
    end
  end
}
setmetatable(t, mt)
t(...) -- Call the modified function with the table as an argument