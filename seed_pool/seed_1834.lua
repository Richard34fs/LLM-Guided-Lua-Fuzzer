local s = "abcdefghijklmnopqrstuvwxyz"
for i=1,10 do
s = string.rep(s, 2)
s = string.gsub(s, "[aeiou]", "")
s = string.reverse(s)
end
print(s)