function coroutine_stress(depth)
  if depth > 0 then
    local co = coroutine.create(function()
      coroutine_stress(depth - 1)
    end)
    local status, value = coroutine.resume(co)

    -- Define local versions of built-in functions
    local insert = table.insert
    local ipairs = ipairs
    local print = print

    -- Use the local versions to perform tests and shadowing
    insert({}, "test")
    for i, v in ipairs({}) do
      print(i, v)
    end

    return value
  else
    return "Max recursion depth reached"
  end
end