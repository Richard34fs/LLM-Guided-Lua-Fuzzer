local function manipulate_string(str)
  local result = ""
  local count = 0
  while count < 100 do
    result = result .. string.rep(str, count) .. "\n"
    str = string.gsub(str, "a", "b")
    count = count + 1
  end
  return result
end

local function manipulate_string_shadowing(str)
  local result = ""
  local count = 0
  while count < 100 do
    result = result .. string.rep(str, count) .. "\n"
    str = string.gsub(str, "a", "b")
    count = count + 1
  end
  return result
end

local function manipulate_string_closure()
  local result = ""
  local count = 0
  local func = function(str)
    result = result .. string.rep(str, count) .. "\n"
    str = string.gsub(str, "a", "b")
    count = count + 1
  end
  while count < 100 do
    func(str)
  end
  return result
end