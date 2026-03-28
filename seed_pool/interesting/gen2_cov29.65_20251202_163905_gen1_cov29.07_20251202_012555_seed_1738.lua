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
  -- Mutated code: insert bitwise operators or combine arithmetic and bitwise/concatenations between strings/numbers to exercise type coercion and conversions
  local b = 0x12345678
  local c = b & 0xFF
  assert(c == 0x78)
end