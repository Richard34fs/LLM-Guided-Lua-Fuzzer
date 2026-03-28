local t = {}
for i=1,1000 do
    local key = tostring(i)
    if i % 2 == 0 then
        key = i
    end
    t[key] = i
end
do
  local t = {}
  for i=1,1000 do
      local key = tostring(i)
      if i % 2 == 0 then
          key = i
      end
      t[key] = i
  end
  print("Mutated code inside a `do...end` block")
end