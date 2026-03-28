function coroutine_stress_test(depth)
  local co = coroutine.create(function()
    if depth > 0 then
      coroutine_stress_test(depth - 1)
    end
  end)
  coroutine.resume(co)
end

local metatable = {
  __add = function(a, b) return a + b end,
  __sub = function(a, b) return a - b end,
  __mul = function(a, b) return a * b end,
  __div = function(a, b) return a / b end
}

local complex_table = {
  "complex",
  "table",
  field1 = 123,
  field2 = "abc",
  sub_table = {
    "nested",
    "table"
  },
  metatable = setmetatable({}, metatable)
}

coroutine_stress_test(5000)