function foo()
    local t = {}  -- Global variable now local to function "foo"
    t["foo"] = 42
    print(t["foo"])
    local a = "1" + 1
    print(a)
    for i = 1, 3 do
        local b = i  -- For loop variable now local to the block it's in
        print(b)
    end
end

local a = "1" + 1  -- The original global variable "a" is shadowed by this one
print(a)
for i = 1, 3 do  -- This for loop has its own local variable "i" that is not affected by the global variable
    print(i)
end