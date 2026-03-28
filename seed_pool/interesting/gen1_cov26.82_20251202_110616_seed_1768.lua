local function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    temp_table[object1] = object2
    temp_table[object3] = object4
    coroutine.yield(object1, object2)
    coroutine.resume(function(obj1, obj2)
      temp_table[obj1] = obj2
      temp_table[object3] = object4
      object1, object2, object3, object4 = nil
      collectgarbage()
    end, object1, object2)
  end
end