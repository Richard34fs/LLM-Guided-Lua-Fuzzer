local t = {}
t["foo"] = 42
t["bar"] = "hello" .. " world"
for i = 1, #t do
t[i] = true
end
local function handle_error(err)
  print("Error occurred: ", err)
end
local status, err = pcall(function()
  error("deliberate call to error()")
end)
if not status then
  handle_error(err)
end
local status, err = pcall(function()
  assert(false, "deliberate call to assert(false)")
end)
if not status then
  handle_error(err)
end
local status, err = pcall(function()
  t["baz"] = 10 -- invalid indexing operation
end)
if not status then
  handle_error(err)
end
print(t["foo"] + #t["bar"])