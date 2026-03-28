local t = {x  = 20}
for i = 1, 10 do
  local key = tostring(i)
  t[key] = t[key] or 0
  t[key] = t[key] + i
end
print(t["10"])

local code = "local t = {x  = 20}\nfor i = 1, 10 do\n  local key = tostring(i)\n  t[key] = t[key] or 0\n  t[key] = t[key] + i\nend\nprint(t[\"10\"])"
local func = load(code)
func()