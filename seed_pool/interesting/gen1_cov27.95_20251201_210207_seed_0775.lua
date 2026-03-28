t = {
  ["10"] = "ten",
  [10] = 10,
  [1] = true,
  metatable = {},
  functionField = function() end,
  nestedTable = { a = 1, b = 2 }
}
for i = 1, #t do
  print(type(i), type(t[i]))
end