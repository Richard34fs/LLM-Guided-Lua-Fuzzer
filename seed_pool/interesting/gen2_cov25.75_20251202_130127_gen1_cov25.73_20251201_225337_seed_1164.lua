local function generate_code(massive_strings)
  local output = {}
  for _, str in ipairs(massive_strings) do
    local repeated = string.rep(str, 1000, "a")     -- Mutation 1: Change number of arguments in function call
    local replaced = string.gsub(repeated, "a", "b")
    table.insert(output, replaced)
  end
  return table.concat(output, "")
end