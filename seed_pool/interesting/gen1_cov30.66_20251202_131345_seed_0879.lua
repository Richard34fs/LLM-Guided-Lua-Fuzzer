function variadic_stack(a, b, ...)
  if ... then
    return variadic_stack(a, b, ...)
  else
    return a + b
  end
end

-- Mutated code
local original_require = require  -- Store the original require function

function mock_require(module_name)
  if module_name == "my_module" then
    return { my_func = function() return 42 end }
  else
    return original_require(module_name)
  end
end

package.path = "/path/to/fake/modules/?.lua;" .. package.path  -- Add fake module path to the search path

local variadic_stack_mutated = variadic_stack  -- Store the original function

function variadic_stack(...)
  if ... then
    return variadic_stack_mutated(...)
  else
    return "fake value"
  end
end

require = mock_require  -- Replace the require function with the mocked version

local result1 = variadic_stack(1, 2)
print(result1)  --> fake value

local my_module = require("my_module")
local result2 = my_module.my_func()
print(result2)  --> 42