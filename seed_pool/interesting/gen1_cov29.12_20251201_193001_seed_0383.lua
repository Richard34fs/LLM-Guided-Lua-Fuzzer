function coroutine_stress(depth)
  if depth == 0 then
    return
  end
  local co = coroutine.create(function()
    coroutine_stress(depth - 1)
  end)
  local status, result = coroutine.resume(co)
  if not status then
    error(result)
  end
end
local table = {
  field1 = "value1",
  field2 = "value2"
}
table.metatable = {}
setmetatable(table, table.metatable)
function table.func()
  print("Function as value in a table")
end
local deep_table = {
  level1 = {
    level2 = {
      level3 = {
        level4 = {
          level5 = "deep nesting"
        }
      }
    }
  }
}