local t = {}
for i = 1, 1000 do
  local key = tostring(i) .. tostring(i % 10)
  t[key] = i
end
print(#t)

-- Add a closure
local function add_closure(x)
  return function(y)
    return x + y
  end
end

-- Add a local function
local function add_one(x)
  return x + 1
end

-- Add an anonymous function
local result = (function(x)
  return x * 2
end)(5)

-- Add shadowing of variables
local x = 10
do
  local x = 20
  print(x) -- Outputs: 20
end
print(x) -- Outputs: 10

-- Provoke bindings, upvalues, and scope conflicts
local function f(a, b)
  local g = function(c, d)
    return a + c
  end
  return g(b, a)
end