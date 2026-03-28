function recursive_varargs(...)
  if select('#', ...) > 0 then
    print(select(1, ...))
    recursive_varargs(select(2, ...))
  end
end

i = 0
while i < 5 do
  recursive_varargs(select(i + 1, ...))
  i = i + 1
end