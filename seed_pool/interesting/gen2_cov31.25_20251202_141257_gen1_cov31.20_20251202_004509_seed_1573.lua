local function my_insert(t, value)
  table.insert(t, value)
  return t
end

local function my_ipairs(t)
  return ipairs(t)
end

local function my_print(...)
  print(...)
  return ...
end

do
  local t = {}

  do
    t["foo"] = "bar"
  end

  do
    my_insert(t, 2)
  end

  for i = 1, 10 do
    if i % 2 == 0 then
      t[i] = i + 1
    else
      t[i] = tostring(i + 1)
    end
  end

  my_print(t["foo"] .. t[1] .. t[2] .. t[3])
end