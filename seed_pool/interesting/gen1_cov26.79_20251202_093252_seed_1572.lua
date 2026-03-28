function churn_memory()
       local temp = {}
       setmetatable(temp, {__mode = "kv"})
       for i = 1, 10000 do
           local t = {}
           for j = 1, 1000 do
               t[j] = string.rep("x", 100)
           end
           temp[i] = t
           t = nil
       end
       collectgarbage()
   end

   local func_with_closure = function()
       churn_memory()
   end