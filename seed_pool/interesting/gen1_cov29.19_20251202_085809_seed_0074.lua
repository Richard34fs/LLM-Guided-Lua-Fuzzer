local function manipulate_strings(str)
local result = ""
local count = 0
while count < 100 do
str = string.rep(str, 2)
str = string.gsub(str, "a", "bb")
result = result .. str
count = count + 1
end
return result
end
local t = {}
setmetatable(t, {__gc = function(self) print("GC called!") end})
collectgarbage() -- force garbage collection