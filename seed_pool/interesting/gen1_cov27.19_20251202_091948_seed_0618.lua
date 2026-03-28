function dynamic_chunk_load(depth)
    if depth > 0 then
        local chunk = "return coroutine_recursion(" .. (depth - 1) .. ")"
        local func, err = loadstring(chunk)
        if not func then
            error(err)
        end

        return func()
    else
        return "Recursion Depth Reached"
    end
end