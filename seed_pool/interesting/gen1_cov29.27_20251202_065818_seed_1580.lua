local t = {
  __metatable = {},
  __tostring = function() return "complex table" end
}
for i=1,1000 do
  t[tostring(i)] = i
  t[i] = tostring(i)
  t["key"] = "value"
  t.nestedTable = { a = 1, b = 2 }
  t.func = function() return "function in table" end
end