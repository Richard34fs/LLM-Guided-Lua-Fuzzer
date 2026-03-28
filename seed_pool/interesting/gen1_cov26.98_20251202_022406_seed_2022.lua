function variadic_func(...)
  local args = {...}
  if #args == 0 then
    return "Stack limit reached"
  end
  return variadic_func(table.unpack(args)) -- modified line
end