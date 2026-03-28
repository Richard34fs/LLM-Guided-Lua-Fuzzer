local function create_table()
  local t = {}

  -- convert global variable to a local variable within a function
  for i = 1, 1000 do
    local key = tostring(i) .. "_" .. i % 10
    t[key] = i
  end

  return t
end
local table_a = create_table() -- create a new table using the function
local table_b = create_table() -- create another table using the same function

-- introduce closure by defining an inner function that refers to variables from an outer scope
local function create_closure(value)
  local function inner_function()
    return value
  end

  return inner_function
end
local closure_a = create_closure("Hello")
local closure_b = create_closure("World")
print(closure_a()) -- prints "Hello"
print(closure_b()) -- prints "World"

-- create local function by moving existing code into a new function definition
local function calculate_sum(a, b)
  return a + b
end
local sum = calculate_sum(10, 20) -- call the local function directly
print(sum) -- prints 30

-- introduce anonymous functions using the `function() end` syntax
local double = function(x)
  return x * 2
end
local result = double(5) -- call the anonymous function directly
print(result) -- prints 10

-- experiment with variable shadowing by reusing names for different variables in nested scopes
local value = "global"
local function shadow_variable()
  local value = "local"
  print(value) -- prints "local"
end
shadow_variable()
print(value) -- prints "global"