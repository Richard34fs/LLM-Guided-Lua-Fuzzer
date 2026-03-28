local t = {}
do
  for i = 1, 1000 do
    if i % 2 == 0 then
      do
        local function inner_function()
          return "value" .. i
        end
        t[i] = inner_function
      end
    else
      do
        local key = "key" .. i
        t[key] = i
      end
    end
  end
end