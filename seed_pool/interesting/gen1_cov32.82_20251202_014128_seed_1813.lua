function generate_code(input)
  local pattern = "(*)"
  local output = ""
  for i = 1, #input do
    output = output .. string.rep(string.gsub(input:sub(i, i), pattern, ""), 5000)
  end
  return output
end

local code = generate_code("Hello World!")
load(code)  -- Dynamically load the generated code as a function