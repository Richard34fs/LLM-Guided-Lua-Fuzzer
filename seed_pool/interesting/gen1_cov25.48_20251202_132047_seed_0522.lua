function recursive_func(...)
  if select('#', ...) > 0 then
    print(...)
    return recursive_func(select(2, ...))
  end

  return ...
end