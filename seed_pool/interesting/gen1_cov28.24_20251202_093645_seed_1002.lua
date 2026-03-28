-- Override the require function to return a fake module
local original_require = require
function mock_require(module_name)
  if module_name == "my_module" then
    return { my_func = function() print("Hello world!") end }
  else
    return original_require(module_name)
  end
end
require = mock_require
-- Set the package.path to a new directory
package.path = "new/module/path/?.lua"
-- Define a function that uses require
function my_func()
  local module = require("my_module")
  module.my_func()
end
-- Call the function and print the result
my_func()