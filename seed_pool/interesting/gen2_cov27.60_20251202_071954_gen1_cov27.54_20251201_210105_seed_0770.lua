do
  function variadic_func(...)
      local args = {...}
      if #args > 0 then
          variadic_func(unpack(args))
      else
          return "Stack limit reached" .. (1 + 2) -- Concatenation between string and number
      end
  end
end