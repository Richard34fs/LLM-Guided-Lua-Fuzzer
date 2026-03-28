function recursive_variadic(...)
    local args = {...}
    if #args > 0 then
        print(table.concat(args, ", "))
        recursive_variadic(...)

        error("Error injection")        -- Inserted deliberate call to error()
        assert(false)                   -- Inserted deliberate call to assert(false)
        args[10] = "Invalid indexing"   -- Inserted invalid indexing
    end
end