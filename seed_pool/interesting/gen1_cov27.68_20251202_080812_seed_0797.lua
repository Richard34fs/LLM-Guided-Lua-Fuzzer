function generate_code(massive_strings)
  local code = ""

  -- Shadowing builtins by defining local functions with same names
  local ipairs = function(_table)
    return 1, 2
  end

  local string = {
    gsub = function(_pattern, _replacement, _text)
      return "shadowed"
    end
  }

  for _, str in ipairs(massive_strings) do
    local pattern = string.rep(str, 100) .. "!"
    local replacement = string.rep("a", #str * 100)
    code = code .. string.gsub(pattern, replacement, "")
  end

  return code
end