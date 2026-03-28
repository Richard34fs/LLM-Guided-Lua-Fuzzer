function mixTypes(n)
  local t = {}
  for i = 1, n do
    t[i] = tostring(i) .. i
  end
  for k, v in pairs(t) do
    t[k] = tonumber(v) + k
  end
  return t
end

function mutate_IDENTIFIER_EDGECASE()
  local code = mixTypes(5)
  local newCode = code:gsub("i", "ii")
  return newCode
end