local t = {
__index = function(t, k)
return k
end;
__newindex = function(t, k, v)
t[k] = v
end;
__add = function(a, b)
return a .. b
end;
__call = function(...)
print(...)
end;
}
setmetatable(t, t)