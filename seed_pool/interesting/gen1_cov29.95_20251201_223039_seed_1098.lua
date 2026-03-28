for i = 1, 1000 do
  local t = {}
  setmetatable(t, { __gc = function()
    print("Finalizing table")
  end })

  for j = 1, 1000 do
    t[{}] = j
  end

  t = nil
  collectgarbage()
end