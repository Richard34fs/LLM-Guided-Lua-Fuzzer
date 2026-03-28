local function manipulate_string(s)
    package.path = "/fake/directory/?.lua;" .. package.path  -- Add a line to manipulate `package.path`
    
    local fake_module = require("fake_module")  -- Create a fake module or mock with specific behavior
    
    local repeated = string.rep(s, 10000)
    local replaced = string.gsub(repeated, "a", "")
    local result = ""
    for i = 1, #replaced do
        result = result .. string.sub(replaced, i, i)
    end
    
    assert(result == fake_module.expected_result)
    
    return result
end