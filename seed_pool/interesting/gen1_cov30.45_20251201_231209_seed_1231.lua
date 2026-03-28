local package = require('package')
local coroutine = require('coroutine')
local print = print
local error = error
local function coroutine_function(x)
  local co = coroutine.create(function()
    local y = x + 10
    print("Inside coroutine, yielding: ", y)
    y = coroutine.yield(y)
    print("Inside coroutine, yielding: ", y)
    return y
  end)
  package.path = ''
  local status, result = coroutine.resume(co, x)
  if not status then
    error(result)
  end
  print("Outside coroutine, received: ", result)
end
coroutine_function(10)