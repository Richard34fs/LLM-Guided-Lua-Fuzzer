local function mock_module(name, mock_functions)
  package.loaded[name] = mock_functions
end
function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    result = result .. string.rep("a", i)
  end
  require('string').gsub(result, "a+", "")
  return result
end
mock_module('string', {
  gsub = function(s, pattern, replacement)
    return s:gsub(pattern, replacement)
  end
})
package.path = "/tmp/?.lua;/usr/local/share/lua/5.1/?.lua" .. package.path