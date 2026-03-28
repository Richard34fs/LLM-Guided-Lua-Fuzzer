do
       function coroutine_stress_test(n)
           local function recurse(depth)
               if depth > 0 then
                   return recurse(depth - 1)
               end
               return n
           end
           local co = coroutine.create(function()
               return recurse(n)
           end)
           return coroutine.resume(co)
       end
   end