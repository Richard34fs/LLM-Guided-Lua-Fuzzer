local function coroutine_example()
  local function simple_coroutine(a, b)
    print("Simple coroutine called with arguments:", a, b)
    return a + b
  end

  local coroutine_instance = coroutine.create(simple_coroutine)
  local success, result = coroutine.resume(coroutine_instance, 10, 20)

  if success then
    print("Coroutine returned:", result)
  else
    print("Coroutine failed:", result)
  end
end