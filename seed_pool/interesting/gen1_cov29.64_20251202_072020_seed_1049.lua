t = {} -- Create a new table
t["1"] = 1 -- Add an element with key "1" and value 1
t["1"] = t["1"] + 1 -- Increment the value of the element with key "1"
for i=1,10 do
  t[i] = i .. "" -- Convert i to a string and add it as an element to the table
end
print(t["1"]) -- Print the value of the element with key "1"
-- Add a metatable to the table with a __gc metamethod that prints a message when the table is garbage collected
metatable = {
  __gc = function() print("Table was garbage collected!") end
}
setmetatable(t, metatable)
-- Force garbage collection
t = nil
collectgarbage()