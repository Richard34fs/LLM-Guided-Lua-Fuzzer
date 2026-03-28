for i = 1, 1000 do
  local t = setmetatable({}, {__gc  = function() end})
  for j = 1, 1000 do
    t[j] = {}
  end
  t = nil
  collectgarbage()
end
local chunk = "for i  =  1, 1000 do local t = setmetatable({}, {__gc  = function() end}) for j  =  1, 1000 do t[j]  = {} end t  = nil collectgarbage() end"
load(chunk)