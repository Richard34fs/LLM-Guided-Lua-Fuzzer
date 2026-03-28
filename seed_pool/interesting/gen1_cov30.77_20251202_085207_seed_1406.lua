function variadic_function(...)
   local args = {...}
   if #args > 0 then
      print(table.concat(args, ", "))
      variadic_function(unpack(args))
   end
end

local co = coroutine.create(variadic_function)
coroutine.resume(co, "hello", "world")