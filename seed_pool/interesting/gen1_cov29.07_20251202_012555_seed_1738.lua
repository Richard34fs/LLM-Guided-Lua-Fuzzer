local t = {}
do
  local i=1
  while i<=10 do
    local key = tostring(i)
    t[key] = i
    i = i + 1
  end
end
for k,v in pairs(t) do
  assert(tonumber(k) == v)
end