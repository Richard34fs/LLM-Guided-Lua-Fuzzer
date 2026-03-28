a = setmetatable({}, {
  __newindex = function(t, k, v)
    rawset(t, k, tostring(v))
  end;
  __add = function(t, k)
    return tonumber(t[k]) + 1
  end;
})
for i=1,10 do
  a[i] = i
end
print(a + 5)