function coroutine_manipulate_string(input_string)
  local pattern = "x"
  local modified_string = input_string

  local coroutine_func = coroutine.create(function()
    for i = 1, 10 do
      modified_string = string.rep(modified_string, i) .. string.gsub(modified_string, pattern, "")
      coroutine.yield(modified_string)
    end
  end)

  local status, result = coroutine.resume(coroutine_func)
  while status and result do
    print(result)
    status, result = coroutine.resume(coroutine_func)
  end
end