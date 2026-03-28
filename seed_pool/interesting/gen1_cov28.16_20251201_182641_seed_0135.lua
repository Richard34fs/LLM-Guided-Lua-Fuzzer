do
  local function inner_block()
    for _ = 1, 100 do
      local t = setmetatable({}, {__mode = 'k'})
      t[1] = {}
      t = nil
      collectgarbage()
    end
  end

  inner_block()
end