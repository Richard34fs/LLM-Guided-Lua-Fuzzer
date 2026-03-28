local function create_key(i)
  local key = tostring(i)
  if i % 3 == 0 then
    key = "key" .. i
  end
  return key
end

local t = {}
for i = 1, 1000 do
  local key = create_key(i)
  t[key] = i
end

t.__gc = function()
  print("Garbage collected")
end

setmetatable(t, {__gc = t.__gc})

local pcall_status, pcall_result = pcall(function()
  error("Deliberate error")  -- Inject error via `error()`
end)

if not pcall_status then
  print("Error caught: ", pcall_result)
end

local pcall_status, pcall_result = pcall(function()
  local invalid_index = t[1001]  -- Inject error via invalid index
end)

if not pcall_status then
  print("Error caught: ", pcall_result)
end

local function error_handler(err)
  return "Error handled: " .. err
end

local xpcall_status, xpcall_result = xpcall(function()
  assert(false, "Deliberate assertion failure")  -- Inject error via `assert()`
end, error_handler)

if not xpcall_status then
  print("Error caught: ", xpcall_result)
end