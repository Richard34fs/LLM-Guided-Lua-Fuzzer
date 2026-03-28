function is_number(value)
  return type(value) == 'number'
end

t = {
  ["10"]  = "ten",
  [10]    = 10,
  [1]     = true,
  metatable = {},
  functionField = function() end,
  nestedTable = { a = 1, b = 2 }
}
for i = 1, #t do
  if is_number(i) then
    print(type(i), type(t[i]))
  else
    print('The key is not a number')
  end
end