function manipulate_strings(n)
local s = ""
for i = 1, n do
s = s .. string.rep("x", i) .. "\n"
end
s = string.gsub(s, "xx", "o")
return s, n  -- Mutated code: return two values - a string and a number
end