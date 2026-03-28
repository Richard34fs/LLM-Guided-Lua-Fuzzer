local t = {}  -- global table
t["foo"] = 42  -- global variable
t[2 + 3] = 100  -- numeric key
for i = 1, 10 do
  local function f()  -- local function
    return i * 2
  end
  t[i] = f()  -- upvalue
end
print(t["foo"])  -- global variable
print(t[5])  -- local variable
print(t["3"])  -- numeric key