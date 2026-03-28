local t = {}
local coroutine_func = coroutine.create(function()
  for i=1,1000 do
    local key = (i % 3 == 0) and tostring(i) or i
    t[key] = i
    coroutine.yield()
  end
end)
while coroutine.status(coroutine_func) ~= "dead" do
  coroutine.resume(coroutine_func)
end