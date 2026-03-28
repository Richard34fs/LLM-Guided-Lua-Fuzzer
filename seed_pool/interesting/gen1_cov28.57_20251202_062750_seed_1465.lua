local t = {}
t[1] = "one"
t["two"] = 2
t[t] = t
for k, v in pairs(t) do
print(k, v)
end
print(type(1))
print(type("1"))
print(type(true))
local function closure()
local a = 1
end
local function local_function()
local b = 2
end
local anonymous_function = function()
local c = 3
end