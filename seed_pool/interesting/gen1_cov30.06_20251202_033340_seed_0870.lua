local t = {}
for i=1,10 do
    local function modifyValues(t, k, v)
        t[k] = v + "1"
    end

    t[i] = i
    modifyValues(t, i, t[i])
end

local function addOne(x)
    return x + 1
end

for k,v in pairs(t) do
    local i = addOne(k)
    t[k] = v + "1"
end