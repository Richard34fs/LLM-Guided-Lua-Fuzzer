local function mutate(code)
    local chunks = {}

    for i = 1, 20 do
        chunks[i] = "loadstring(" .. string.format("%q", code) .. ")"
    end

    return table.concat(chunks, "\n")
end