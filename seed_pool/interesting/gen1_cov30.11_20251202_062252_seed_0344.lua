local function func(i)
    return i * 2
end

t = setmetatable({}, {__index = func})
for i=1,1000 do
    t[tostring(i)] = i
    t[i] = i
end
print(#t)