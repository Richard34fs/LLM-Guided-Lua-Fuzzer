function recursive_varargs(...)
    local args = {...}
    if #args > 0 then
        print(unpack(args))

        local function helper(a)
            return a * a
        end

        local result = helper(unpack(args))

        recursive_varargs(result, unpack(args))
    end
end