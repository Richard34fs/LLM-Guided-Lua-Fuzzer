local t = {}
for i = 1, 1000 do
  local key = tostring(i) .. "_key"
  t[key] = i
end
for i = 1001, 2000 do
  local key = tostring(i)
  t[key] = i
end
local meta_table = {
  __gc = function()
    print("Garbage collected!")
  end
}
setmetatable(t, meta_table)
t = nil
collectgarbage()
if type(t) == "userdata" then
  print("Simulating use of userdata")
end