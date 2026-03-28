local t = {} -- added space before and after '='
t["foo"] = "bar" -- removed space before '='
print(t["foo"]) -- changed ';' to '\n'
local x = 10 -- added newline before 'local'
x = x + "20" -- added tab before '+'
print(x) -- added newline after 'print'
for i=1, 5 do -- removed newline before 'do'
  local y = 3.14 -- changed '\t' to space
  y = math.floor(y) -- changed '\n' to ';'
  print(y) -- added newline before and after 'end'
end