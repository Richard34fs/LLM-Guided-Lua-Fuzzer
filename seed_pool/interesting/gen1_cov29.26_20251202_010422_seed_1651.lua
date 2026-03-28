local t = {a  = 2}    -- Modified to add an extra argument
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