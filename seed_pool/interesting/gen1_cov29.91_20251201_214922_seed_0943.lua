local function manipulate_string(s)
  local metatable = getmetatable(s)
  if metatable then
    setmetatable(s, {
      __index = function()
        return 10
      end,
      __newindex = function(t, k, v)
        t[k] = v .. "extra"
      end,
      __add = function(a, b)
        return a .. b
      end,
      __concat = function(a, b)
        return tostring(a) .. tostring(b)
      end,
      __len = function(a)
        return #a + 10
      end,
      __call = function(a, ...)
        return a(...)
      end
    })
  end
  local result = ""
  for i = 1, #s do
    if i % 2 == 0 then
      result = result .. string.rep(string.char(i), 3)
    else
      result = result .. string.gsub(string.sub(s, i, i + 1), ".", "")
    end
  end
  return result
end