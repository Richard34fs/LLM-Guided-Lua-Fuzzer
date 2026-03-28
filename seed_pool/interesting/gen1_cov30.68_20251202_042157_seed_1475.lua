local t = {}
t[2 + "3"] = 5
do
  local function add_item(i)
    if i % 2 == 0 then
      t[i] = true
    else
      t[i] = i
    end
  end

  for i = 1, 10 do
    add_item(i)
  end
end
print(t["5"])