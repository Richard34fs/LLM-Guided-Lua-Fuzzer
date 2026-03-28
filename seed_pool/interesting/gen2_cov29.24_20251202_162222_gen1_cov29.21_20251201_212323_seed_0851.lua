local t = {}
local s = ""
for i=1,10 do
  t[i] = i*2 -- add an extra argument to 't[i]' call
end
for k,v in pairs(t) do
  s = s .. tostring(k+v)
end
print(s) -- remove the 'print' function call