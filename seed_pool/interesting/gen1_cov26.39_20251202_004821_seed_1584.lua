function multi_return_mutation(func)
  local func_info = debug.getinfo(func, "S")
  if not (func_info and func_info.what == "Lua") then
    error("Function must be a valid Lua function.")
  end

  local new_func = string.format("return %s", func)
  return loadstring(new_func)()
end