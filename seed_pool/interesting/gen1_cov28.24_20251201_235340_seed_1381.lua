local original_require = require
function mock_require(module_name)
  if module_name == 'my_module' then
    return {
      foo = function() return 42 end,
      bar = function() return 13 end,
    }
  else
    return original_require(module_name)
  end
end
package.path = '/path/to/alternate/modules/?.lua;' .. package.path
require = mock_require