local function string_manipulation(input_str)
    local modified_str = ""
    modified_str = modified_str .. string.rep(input_str, 10)
    modified_str = string.gsub(modified_str, "abc", "def")
    return modified_str
end
local metatable = {
  __index = function(table, key)
    if key == 'complex' then
      return true
    end
  end
}
local complex_table = setmetatable({}, metatable)
local function complex_function()
  local nested_table = { a = 1, b = 2 }
  return nested_table.a + nested_table.b
end
complex_table.complex_function = complex_function
complex_table.extra_field = "foo"