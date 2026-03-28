function manipulate_string(str)
  return string.rep(str, 1000), string.gsub(str, "foo", "bar")
end

local repeated, modified = manipulate_string("foo")
local result = ""
for i = 1, #modified do
  result = result .. string.sub(modified, i, i)
end