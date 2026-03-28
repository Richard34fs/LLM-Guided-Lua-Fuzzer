local function identifier_edgecase(code)
    local identifiers = {
        "_", "a_long_identifier", "unicode_identifier", "repeated_identifier", "repeated_identifier",
        "shadowed_identifier", "reassigned_identifier"
    }

    for i, identifier in ipairs(identifiers) do
        code = code:gsub("t", identifier, 1)
    end

    return code
end