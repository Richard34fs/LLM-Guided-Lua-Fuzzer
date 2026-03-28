local t = {}
for i = 1, 1000 do
    local key = tostring(i) .. "a"
    t[key] = i
end
local chunk_code = 'for j=1,100 do print("Hello World!") end'
load(chunk_code)()  -- dynamic chunk load