a = {}
for i=1,10 do
    a[i] = tostring(i)
end
b = setmetatable({}, {__tostring = function (self) return table.concat(self, ", ") end})
for j=1,10 do
    b[j] = tostring(j)
end
c = {}
for k,v in pairs(a) do
    c[k] = v .. b[k]
end