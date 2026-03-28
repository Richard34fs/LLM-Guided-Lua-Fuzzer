local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i
  t[i] = i
end
for i = 1, 1000 do
  local key = tostring(i * 10)
  t[key] = i
  t[i * 10] = i
end
local function error_injection()
  error("Error injection!") -- added error injection
end
pcall(error_injection) -- capture errors using pcall