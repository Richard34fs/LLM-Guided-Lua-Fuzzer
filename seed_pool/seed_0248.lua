function f(...)
local args = {...}
if #args == 0 then
return "Stack limit reached"
else
return f(unpack(args))
end
end