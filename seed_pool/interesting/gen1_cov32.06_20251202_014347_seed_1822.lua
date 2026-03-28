-- Mutant: COROUTINE_MUTATION
local function coroutine_mutation(a, b, t)
  local function coroutine_function()
    for i=1, 10 do
      a, b = coroutine.yield(b, a)
    end
  end
  local co = coroutine.create(coroutine_function)
  local result = {coroutine.resume(co, a, b)}
  while not result[1] do
    result = {coroutine.resume(co, a, b)}
  end
  t[t] = 1
end

a = "1"
b = a + 1
t = {}
coroutine_mutation(a, b, t)
for i=1,10 do
  a, b = b, a
end