function variadic_func(...)
   if select('#', ...) > 0 then
      variadic_func(select(2, ...))
   end
end
variadic_func(1, 2, 3, 4, 5)
local _table = table
local _ipairs = ipairs
local _print = print
function variadic_func(...)
   if select('#', ...) > 0 then
      variadic_func(select(2, ...))
   end
end
variadic_func(1, 2, 3, 4, 5)