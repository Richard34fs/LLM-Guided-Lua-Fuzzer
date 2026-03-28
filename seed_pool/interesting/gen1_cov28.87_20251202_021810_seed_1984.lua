local function generate_lua_code(str)
    local result = ""
    local pattern = "pattern"
    for i = 1, #str do
        if i % 2 == 0 then
            result = result .. string.rep(string.char(i), i)
        else
            result = result .. string.gsub(str, pattern, "")
        end
    end
    return result
end
local t = {
    __metatable = "hidden metatable",
    func = function()
        print("Hello from a table function!")
    end,
    extra_field = 42,
    nested = {
        deep = {
            structure = true
        }
    }
}