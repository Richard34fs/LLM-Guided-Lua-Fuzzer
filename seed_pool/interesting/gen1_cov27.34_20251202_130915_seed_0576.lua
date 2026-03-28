local fake_module = {
  foo = function() return 10 end
}
local original_require = require
function require(module)
  if module == "my_module" then
    return fake_module
  else
    return original_require(module)
  end
end