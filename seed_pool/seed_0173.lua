function coroutine_recursion(n)
local function helper(n)
if n > 0 then
print("Recursion level:", n)
return helper(n - 1)
end
return "Base case reached"
end
local co = coroutine.create(function()
return helper(n)
end)
return co
end