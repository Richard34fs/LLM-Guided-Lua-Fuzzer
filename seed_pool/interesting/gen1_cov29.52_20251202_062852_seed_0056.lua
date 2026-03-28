-- DYNAMIC_CHUNK_LOAD
local chunk = [[a = {}
for i=1,10 do
  a[i] = tostring(i)
end
b = {}
for j=1,10 do
  b[j] = tostring(j)
end
c = {}
for k,v in pairs(a) do
  c[k] = v .. b[k]
end]]
local func = load(chunk)  -- dynamically load and compile the chunk
func()                    -- execute the chunk by calling the resulting function
print(c[5])              -- output: "55"