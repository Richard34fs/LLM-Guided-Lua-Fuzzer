function manipulate_string(str)
  local function helper(i, result)
    if i > 100 then
      return string.gsub(result, "a", "b")
    end
    return helper(i + 1, result .. string.rep(str, i) .. "\n")
  end
  return helper(1, "")
end