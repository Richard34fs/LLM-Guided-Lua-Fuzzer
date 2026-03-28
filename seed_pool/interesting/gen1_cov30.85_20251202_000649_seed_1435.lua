local t = {}
for i = 1, 1000 do
  if i % 2 == 0 then
    local function inner_function()
      return "value" .. i
    end
    t[i] = inner_function
  else
    local key = "key" .. i
    t[key] = i
  end
end