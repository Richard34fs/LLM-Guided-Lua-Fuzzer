t = {}
for i = 1, 1000 do
    t[tostring(i)] = i
    t[i] = tostring(i)
    pcall(function() error("Error injection") end) -- Addition of error injection using `pcall` and `error()`
    if i == 500 then
        t[1001] = "Invalid index" -- Invalid index assignment
    end
end