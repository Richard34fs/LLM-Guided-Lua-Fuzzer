function error_injection(t)
  for i=1,1000 do
    t[i] = "value" .. i
    t["key" .. i] = i
    error("Error injection")  -- deliberate call to `error()`
  end
end

local status, err = pcall(error_injection, {})
if not status then
  print(err)
end