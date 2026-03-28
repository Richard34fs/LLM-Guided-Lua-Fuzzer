local t = {}
for i = 1, 1000 do
  local key = math.random() > 0.5 and tostring(i) or i
  t[key] = i
end
print(#t)

-- Add a metatable to the table
setmetatable(t, { __tostring = function(self) return "Metatable: " .. tostring(self) end })

-- Assign a function as a value in the table
t.func = function() print("This is a function in the table") end

-- Add an extra field to the table
t.extraField = "Extra Field"

-- Create a nested table within the existing table
t.nestedTable = { a = 1, b = 2, c = 3 }