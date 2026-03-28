local function pcall_wrapper(func)
  local success, result = pcall(func)
  if not success then
    error("Error in pcall_wrapper: " .. tostring(result))
  end
  return result
end

local t = {a  = 2}
local s = "3"
for i  = 1, 10 do
  t[s]  = t[s] or 0
  t[s]  = t[s] + i
  pcall_wrapper(function()
    s = t.a
  end)
end
print(t[s])