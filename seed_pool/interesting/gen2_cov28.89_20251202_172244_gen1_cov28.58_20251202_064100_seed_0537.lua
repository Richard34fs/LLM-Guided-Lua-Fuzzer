function foo()
    local t = {}   -- Global variable now local to function "foo"
    t["foo"] = 42
    print(t["foo"])
    local a = "1" + 1
    print(a)
    local i = 1    -- Initialise the loop variable outside of the loop
    while i <= 3 do
        local b = i   -- For loop variable now local to the block it's in
        print(b)
        i = i + 1    -- Increment the loop variable inside the loop
    end
end

local a = "1" + 1   -- The original global variable "a" is shadowed by this one
print(a)
local i = 1        -- This for loop has its own local variable "i" that is not affected by the global variable
while i <= 3 do
    print(i)
    i = i + 1
end