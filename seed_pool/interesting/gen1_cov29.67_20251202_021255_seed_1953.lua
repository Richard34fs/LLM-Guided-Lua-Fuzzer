function mutate(code)
  local parser = require("parser")
  local ast = parser.parse(code)

  -- Find all assignments that have multiple return values on the right side
  local assignments = {}
  for i, node in ipairs(ast) do
    if node.type == "Assign" and #node.target > 1 then
      table.insert(assignments, node)
    end
  end

  -- Replace one assignment with a call to a function that returns multiple values
  local new_assignment = assignments[1]
  local func_name = "my_func"
  new_assignment.type = "Call"
  new_assignment.target = nil
  new_assignment.value = {
    type = "Id",
    value = func_name,
  }

  -- Insert a function definition before the first assignment
  table.insert(ast, 1, {
    type = "FuncDef",
    name = func_name,
    params = {},
    body = assignments[1].value,
  })

  local serializer = require("serializer")
  local new_code = serializer.serialize(ast)

  return new_code
end