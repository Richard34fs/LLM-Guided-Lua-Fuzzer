local t = {}
t["123"] = "abc"
t[456] = 789
for i=1,10 do
t[i] = i*i
end

local meta = {
  __index = function(table, key)
    print("Attempting to access nonexistent field: ", key)
  end,
  __newindex = function(table, key, value)
    if type(key) == "number" then
      rawset(table, key, value)  -- Allow setting new numeric fields
    else
      error("Cannot set non-numeric field: " .. tostring(key))
    end
  end
}

setmetatable(t, meta)
print(t["123"])
print(t[456])
for i=1,10 do
  print(t[i])
end