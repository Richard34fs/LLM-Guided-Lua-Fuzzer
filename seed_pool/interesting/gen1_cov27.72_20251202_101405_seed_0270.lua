function coroutine_recursion(n)
  if n > 0 then
    local co = coroutine.create(
      function()
        local t = {}
        setmetatable(t, {__index = function() return "nested_function" end})
        t.nested_table = {}
        t.nested_table.nested_table = {}
        t.nested_table.nested_table.nested_value = "nested_value"

        return t
      end
    )
    local status, result = coroutine.resume(co)
    return result
  else
    local t = {}
    setmetatable(t, {__index = function() return "nested_function" end})
    t.nested_table = {}
    t.nested_table.nested_table = {}
    t.nested_table.nested_table.nested_value = "nested_value"

    return t
  end
end

function coroutine_recursion2(n)
  if n > 0 then
    local co = coroutine.create(
      function()
        local t = {}
        setmetatable(t, {__index = function() return "nested_function" end})
        t.nested_table = {}
        t.nested_table.nested_table = {}
        t.nested_table.nested_table.nested_value = "nested_value"

        return t
      end
    )
    local status, result = coroutine.resume(co)
    return result
  else
    local t = {}
    setmetatable(t, {__index = function() return "nested_function" end})
    t.nested_table = {}
    t.nested_table.nested_table = {}
    t.nested_table.nested_table.nested_value = "nested_value"

    return t
  end
end