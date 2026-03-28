local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
end
local chunk_str = "local t = {}\nfor i = 1, 1000 do\n    local key = tostring(i) .. \"a\"\n    t[key] = i\nend"
load(chunk_str)()