local function manipulate_string(s)
    local result = ""

    for i = 1, #s do
        result = result .. string.rep(string.sub(s, i, i), 3)
    end

    return string.gsub(result, "a", "b")
end

local function test_error_injection()
    local status, err = pcall(manipulate_string, "test")
    if not status then
        print("Error occurred:", err)
    else
        print("Manipulation successful:", result)
    end
end

local table = {}
function table.insert(list, value)
  list[#list + 1] = value
end

local ipairs = function (t)
  local i = 0
  return function ()
    i = i + 1
    return i, t[i]
  end
end

local print = function (...)
  io.write(...)
  io.write("\n")
end

test_error_injection()