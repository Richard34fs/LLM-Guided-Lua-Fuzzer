local table = {
  insert = function(t, pos, value)
    -- Insert a new element at position `pos` in table `t`, shifting all subsequent elements one position to the right.
    for i = #t+1, pos+1, -1 do
      t[i] = t[i-1]
    end
    t[pos] = value
  end
}
local ipairs = function(t)
  local i = 0
  return function()
    i = i + 1
    if t[i] then
      return i, t[i]
    end
  end
end
local print = function(...)
  -- Print all arguments separated by spaces and followed by a newline.
  io.write(table.concat({...}, " "), "\n")
end
local pattern = "a"
local replacement = "b"
local count = 1000
local result = ""
for i = 1, count do
  result = result .. string.rep(pattern, i)
end
result = string.gsub(result, pattern, replacement)