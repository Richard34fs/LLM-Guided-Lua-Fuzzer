local mt = {
  __add = function(a, b)
    return a + b
  end,
  __len = function(a)
    return #a
  end
}

function recurse(...)
  local args = {...}
  setmetatable(args, mt)
  if #args > 0 then
    recurse(select(2, ...))
  end
end