local table = {}
function variadic_test(...)
  if select('#', ...) > 0 then
    return variadic_test(...)
  end
  return true
end
table.insert = function(...)
  local args = { ... }
  print('Shadowed insert:', args[1], args[2])
  variadic_test(...)
  table.insert(...)
end
print(table.insert) -- Original insert function
print(variadic_test) -- Mutated insert function