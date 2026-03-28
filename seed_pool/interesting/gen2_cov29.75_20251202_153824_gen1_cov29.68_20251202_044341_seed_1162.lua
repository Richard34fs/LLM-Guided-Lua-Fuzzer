local t = {a=1}   -- Global block
t[t] = 2          -- Convert global block to local one
print(t[t])       -- Add closure, local function, and anonymous function
local s = "1"
s = s + 1         -- Shadow variable 's' with another variable 's'
print(s)
for i in ipairs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}) do
  i = tostring(i)  -- Add binding and upvalue for variable 'i'
  print(i)        -- Convert local block to global one
end