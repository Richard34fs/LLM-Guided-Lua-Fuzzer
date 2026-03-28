local t = { 3 } -- This is a comment
t[t] = 2
for i=1,10 do
  local s = "4"
  s = s + 1
  if type(s) == "number" then
    print(s)
  end
end
print(t[t])