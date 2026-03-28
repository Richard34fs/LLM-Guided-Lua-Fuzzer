function recursive_vararg(...)
    print(...)
    if select("#", ...) < 10 then
        local insert = table.insert
        local ipairs = ipairs
        local print = print

        insert(...)
        for k, v in ipairs(...) do
            print(k, v)
        end
        recursive_vararg(...)
    end
end
function mutate_code(code)
    local new_globals = {}

    for k, v in pairs(_G) do
        new_globals[k] = v
    end

    new_globals.table = {
        insert = function(...)
            print("Overridden table.insert called with:", ...)
        end
    }

    new_globals.ipairs = function(...)
        print("Overridden ipairs called with:", ...)
        return ipairs(...)
    end

    new_globals.print = function(...)
        print("Overridden print called with:", ...)
    end

    local f = load(code, "mutated_code", "t", new_globals)
    if f then
        f()
    end

    return code
end