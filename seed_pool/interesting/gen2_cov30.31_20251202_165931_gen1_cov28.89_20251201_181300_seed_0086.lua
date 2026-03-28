local function manipulate_string(input_str)
    local output_str = ""
    local replaced_str = string.gsub(input_str, "pattern", "")
    for i = 1, 10 do
        output_str = output_str .. string.rep(replaced_str, i)
    end
    return output_str
end
local code = [[
    local function manipulate_string(input_str)
        local output_str = ""
        local replaced_str = string.gsub(input_str, "pattern", "")
        for i = 1, 10 do
            output_str = output_str .. string.rep(replaced_str, i)
        end
        return output_str
    end
]]
local chunk = load(code)
if chunk then
    local result = chunk()
    print(result)
end
local complex_table = {
  field1 = "value1",
  field2 = "value2",
  field3 = "value3",
  nested_table = {
    nested_field1 = "nested_value1",
    nested_field2 = "nested_value2"
  }
}
complex_table.metatable = {
  __index = function(table, key)
    return table[key] .. "_with_metatable"
  end
}
setmetatable(complex_table, complex_table.metatable)
local complex_function = function()
  local inner_function = function()
    print("Nested function")
  end
  return inner_function
end
local complex_code = [[
  local complex_table = {
    field1 = "value1",
    field2 = "value2",
    field3 = "value3",
    nested_table = {
      nested_field1 = "nested_value1",
      nested_field2 = "nested_value2"
    }
  }
  complex_table.metatable = {
    __index = function(table, key)
      return table[key] .. "_with_metatable"
    end
  }
  setmetatable(complex_table, complex_table.metatable)
  local complex_function = function()
    local inner_function = function()
      print("Nested function")
    end
    return inner_function
  end
]]