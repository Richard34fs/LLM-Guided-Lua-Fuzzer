local function generate_lua_code(str)
    local result = ""
    local pattern = "pattern"

    local i = 1   -- inicialização
    while i <= #str do   -- condição
        if i % 2 == 0 then
            result = result .. string.rep(string.char(i), i)
        else
            result = result .. string.gsub(str, pattern, "")
        end
        i = i + 1   -- incremento
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