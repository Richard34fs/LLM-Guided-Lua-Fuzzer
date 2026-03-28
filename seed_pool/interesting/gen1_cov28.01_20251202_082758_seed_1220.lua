function coroutine_stress(n)
  local function recurse(i)
    if i > n then
      return
    end
    recurse(i + 1)
  end

  -- Override standard functions with local versions
  local table_insert = table.insert
  local ipairs = ipairs
  local print = print

  local co = coroutine.create(function()
    recurse(1)
  end)

  -- Invoke both the global and local version of standard functions
  table.insert({})
  table_insert({})
  for _ in ipairs({}) do
  end
  print("")
end