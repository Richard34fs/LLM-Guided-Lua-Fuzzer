local function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "k"})
    for i = 1, 1000 do
      temp_table[i] = {}
    end
    temp_table = nil
    collectgarbage()
  end
end

local function test_error_handling()
  local function test_function()
    error("This is an error") -- Inject error using `error()`
  end

  local status, err = pcall(test_function)
  if not status then
    print(err)
  end

  local function test_function2()
    assert(false, "This is an assertion error") -- Inject error using `assert(false)`
  end

  local status2, err2 = pcall(test_function2)
  if not status2 then
    print(err2)
  end

  local temp_table = {}
  temp_table[1] = 10
  temp_table["foo"] = "bar" -- Inject error using invalid indexing

  local function test_function3()
    churn_memory()
  end

  local status3, err3 = pcall(test_function3)
  if not status3 then
    print(err3)
  end
end

test_error_handling()