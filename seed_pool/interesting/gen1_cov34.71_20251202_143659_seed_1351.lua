local t = {}
t["foo"] = 42
t[4] = "bar"
for i = 1, 5 do
if i % 2 == 0 then
t[i] = i * 2
else
t[i] = tostring(i * 3)
end
end
print(t["foo"] + t[4])
for k, v in pairs(t) do
print(k, v)
end

local function coroutine_function()
  local i = 1
  return function()
    if i <= 5 then
      if i % 2 == 0 then
        t[i] = i * 2
      else
        t[i] = tostring(i * 3)
      end
      i = i + 1
      return i - 1, t[i - 1]
    end
  end
end

local coroutine_object = coroutine.create(coroutine_function)

local status, value = coroutine.resume(coroutine_object)
while status and value do
  print(value)
  status, value = coroutine.resume(coroutine_object)
end