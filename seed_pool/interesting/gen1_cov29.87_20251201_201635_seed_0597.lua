function generate_code(pattern, count)
  local chunks = {}
  for i = 1, count do
    local chunk = string.rep(pattern, i) .. "\n"
    table.insert(chunks, chunk)
  end
  return table.concat(chunks)
end

local code = generate_code("A", 5) -- Generate code with "A" repeated 5 times
load(code)                       -- Dynamically load and execute the generated code