function coroutine_stress(n)
  local function recurse(n)
    if n > 0 then
      return recurse(n - 1)
    end
  end

  local co = coroutine.create(function()
    recurse(n)
  end)

  return {co, metatable = {}, function() print("Hello") end, extra_field = 42, deep_nesting = {{}}}
end
local chunk = "return coroutine_stress(10)"
local f = load(chunk)
local result = f()