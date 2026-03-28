function coroutine_nesting(n)
local function helper(i)
if i > 0 then
print("Coroutine", n, "yielding", i)
return coroutine.yield(helper(i - 1))
else
return i
end
end
local co = coroutine.create(function()
return helper(n)
end)
return co
end