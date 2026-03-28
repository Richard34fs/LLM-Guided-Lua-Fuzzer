function generate_code(str)
    local repeated = string.rep(str, 10000)
    local modified = string.gsub(repeated, "a", "")
    local result = ""
    for i = 1, #modified do
        result = result .. string.sub(modified, i, i)
    end
    return result
end

local code_chunks = {
    'print("Hello, World!")',
    'local x = 5 + 6\nprint(x)',
    'local function add(a, b)\n    return a + b\nend\nprint(add(10, 20))'
}
for _, chunk in ipairs(code_chunks) do
    local f, err = load(chunk)
    if f then
        f()
    else
        print("Error loading chunk:", err)
    end
end