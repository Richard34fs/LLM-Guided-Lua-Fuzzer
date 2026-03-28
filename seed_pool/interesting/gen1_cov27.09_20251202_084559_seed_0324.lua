function mutate_metatable(node)
  if node.type == "FunctionDeclaration" then
    -- Insert a new metatable with an __index and __newindex metamethod
    local new_metatable = {
      __index = function() return node.body end,
      __newindex = function() node.body = {} end
    }

    -- Set the metatable of the function declaration
    setmetatable(node, new_metatable)

  elseif node.type == "LocalVariableDeclaration" then
    -- Add a new field to the variable declaration
    local new_field = {
      name = "newField",
      value = 123
    }
    table.insert(node.init, new_field)
  end
end