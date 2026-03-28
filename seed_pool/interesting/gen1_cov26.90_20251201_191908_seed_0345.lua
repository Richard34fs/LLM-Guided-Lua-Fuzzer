function coroutine_recursion(n)
       local co = coroutine.create(function()
           if n > 0 then
               print("Current depth:", n)
               error("Intentional error")   -- Add an intentional error
               coroutine_recursion(n - 1)
           else
               error("Recursion depth reached zero")
           end
       end)
       return co
   end