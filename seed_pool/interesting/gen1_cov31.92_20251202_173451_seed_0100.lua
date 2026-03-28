local t = {}
for i = 1, 1000 do
  local key = tostring(i) .. "foo"
  t[key] = i
end
coroutine.wrap(function()
    for k, v in pairs(t) do
      print(k, v)
      coroutine.yield()
  end
end)()