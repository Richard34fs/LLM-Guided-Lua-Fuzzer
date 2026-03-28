local t = {a  = 2}     -- Modified to add an extra argument
t[3]  = "3"           -- Modified to remove an argument
t["3"]  = {}          -- Modified to insert an extra value
for i  = 1, 10 do     -- Modified to change the number of arguments
    if type(t[i]) == "number" then
        t[i]  = t[i] + 1
    else
        t[i]  = i * 2
    end
end
print(t[1], t[2], t[3]) -- Modified to add an extra argument


local table_insert = table.insert   -- Replaced built-in function with local version
local ipairs = ipairs               -- Replaced built-in function with local version
local print = print                 -- Replaced built-in function with local version
local t = {a  = 2}     -- Modified to add an extra argument
t[3]  = "3"           -- Modified to remove an argument
t["3"]  = {}          -- Modified to insert an extra value
for i  = 1, 10 do     -- Modified to change the number of arguments
    if type(t[i]) == "number" then
        t[i]  = t[i] + 1
    else
        t[i]  = i * 2
    end
end
print(t[1], t[2], t[3]) -- Modified to add an extra argument


local table_insert = table.insert   -- Replaced built-in function with local version
local ipairs = ipairs               -- Replaced built-in function with local version
local print = print                 -- Replaced built-in function with local version
table_insert(t, 1)                 -- Invoked global and local versions of table.insert
table_insert(t, 2)
print(t[1], t[2])                  -- Invoked global and local versions of print