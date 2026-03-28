local t = {}
for i=1,10 do
  -- Add a comment
    t[i] = i
end
local s = ""
for k,v in pairs(t) do
   s = s .. tostring(v)
end
local n = 0
for i=1,100 do
  n = n + #s
end
print(n)