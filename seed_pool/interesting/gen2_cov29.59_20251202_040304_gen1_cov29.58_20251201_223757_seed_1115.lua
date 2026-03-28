local t = {}
for i = 1, 1000 do
  local key = (i % 2 == 0) and tostring(i) or i
  if i % 2 == 0 then
    t[key] = nil    -- Simulate missing module
  else
    t[key] = i     -- Load the module
  end
end