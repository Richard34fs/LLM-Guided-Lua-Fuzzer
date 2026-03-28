local function manipulate_string(str)
local new_str = ""
local count = 0
while count < 20 do
str = string.rep(str, 3)
str = string.gsub(str, "a", "b")
new_str = new_str .. str
count = count + 1
end
return new_str
end