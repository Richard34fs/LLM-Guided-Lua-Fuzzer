local function generate_code(pattern, repetitions)
  local result = ""
  for i = 1, repetitions do
    result = result .. string.rep(pattern, i) .. "\n"
  end
  return result
end

local pattern = "***"
local repetitions = 5

-- Mutation: Dynamic chunk load
local code = generate_code(pattern, repetitions)
local f = load(code)
if f then
  f()
end