local str = string.rep("x", 1e6)
i = 1
while i <= 10 do
  local function f()
    str = string.gsub(str, "x", "")
  end
  f()
  i = i + 1
end
print(#str)