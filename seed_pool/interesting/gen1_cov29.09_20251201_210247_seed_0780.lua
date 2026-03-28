function manipulate_string(s)
    local modified = string.rep(s, 1000)
    modified = string.gsub(modified, "abc", "def")
    local result = ""
    for i = 1, 100 do
        result = result .. modified
    end
    return result
end

local metatable = {
  __add = function (a, b)
    return a.value + b.value
  end,
  __sub = function (a, b)
    return a.value - b.value
  end
}

local mytable = setmetatable({ value = 42 }, metatable)
local other_table = { value = 10 }

local sum = mytable + other_table  -- uses __add metamethod
local difference = mytable - other_table  -- uses __sub metamethod

print(sum)  --> 52
print(difference)  --> 32