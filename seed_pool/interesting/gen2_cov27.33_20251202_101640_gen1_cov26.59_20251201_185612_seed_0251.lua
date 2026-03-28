function generate_lua_code(str)
  local function f()
    return string.gsub(result, ".", "")
  end
  local result = ""
  for i = 1, #str do
    result = result .. string.rep(string.char(i), string.byte(str, i))
  end

  local metatable = {__gc = function(self) f() end}
  setmetatable({}, metatable)
  return f()
end