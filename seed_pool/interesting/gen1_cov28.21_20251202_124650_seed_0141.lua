local function manipulate_massive_strings()
    local result = ""
    for i = 1, 10000 do
        result = result .. string.rep("a", 1000) .. string.gsub("b", "b", "c")
    end
    return result
end
local function manipulate_literals()
  -- Modify string literals
  local string_literal1 = "\n"
  local string_literal2 = "\\t"
  local string_literal3 = "Unicode character: \u{00E9}"

  -- Modify number literals
  local number_literal1 = 1e308
  local number_literal2 = -1e308
  local number_literal3 = 3.14

  -- Modify boolean literals
  local boolean_literal1 = not true
  local boolean_literal2 = not false

  -- Modify nil literal
  local nil_literal = error()

  return string_literal1, string_literal2, string_literal3, number_literal1, number_literal2, number_literal3, boolean_literal1, boolean_literal2, nil_literal
end