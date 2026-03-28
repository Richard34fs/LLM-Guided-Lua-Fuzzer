local t = {
  a = {},
  f = function(x) return x end,
  b = {c = {}},
  d = 1
}
local mt = {
  __index = function(t, k)
    error("Index error")  -- Inject error for invalid index access
    return t
  end,
  __newindex = function(t, k, v)
    assert(false, "Newindex error")  -- Inject assertion failure for invalid newindex
    t[k] = t
  end,
  __add = function(a, b)
    error("Add error")  -- Inject error for invalid addition
    return a
  end,
  __call = function(f, ...)
    local status, result = pcall(f, ...)
    if not status then
      error("Call error: " .. tostring(result))  -- Inject error for invalid function call
    else
      return result
    end
  end
}
setmetatable(t, mt)
local function create_cycle()
  local a = {}
  local b = {a = a}
  a.b = b
  error("Cycle detected")  -- Inject error to test cycle detection
  return a
end