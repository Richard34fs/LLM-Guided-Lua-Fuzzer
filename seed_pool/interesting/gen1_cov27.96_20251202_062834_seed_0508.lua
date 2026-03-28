do
  for i = 1, 100 do
    local t = {}
    setmetatable(t, {__mode = 'k'})
    for j = 1, 100 do
      t[j] = {}
    end
    t = nil
    collectgarbage()
  end
end