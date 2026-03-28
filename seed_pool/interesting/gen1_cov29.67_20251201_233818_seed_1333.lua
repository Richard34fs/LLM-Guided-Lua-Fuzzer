local t = {
  _metatable = {},
  [1] = 1,
  [2] = 2,
  [3] = 3
}
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i
end
for i = 1, 1000 do
  local key = math.random(1, 2^30)
  t[key] = i
end