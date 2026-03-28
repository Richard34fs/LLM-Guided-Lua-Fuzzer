local function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local t = setmetatable({}, { __mode = 'kv' })
        temp_tables[i] = t
    end
    local i = 1
    while i <= 100 do
        for k, v in pairs(temp_tables[i]) do
            temp_tables[i][k] = nil
        end
        collectgarbage()
        i = i + 1
    end
end

local table_insert = table.insert
table.insert = function (t, ...)
     -- Insert a new element at the end of the table
     local n = #t + 1
     t[n] = ...

     return n
 end

local ipairs = ipairs
ipairs = function (t)
    local i = 0
    return function ()
        i = i + 1
        if t[i] then
            return i, t[i]
        end
    end
end

local print = print
print = function (...)
     -- Print a message to the console
     local message = table.concat({ ... }, " ")
     io.write(message .. "\n")

     return message
end
churn_memory()
table.insert = table_insert
ipairs = ipairs
print = print