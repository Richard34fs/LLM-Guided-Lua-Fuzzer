function call_variadic(f, ...)
  return f(...)
end
function run()
  local function recursive_call(n)
    if n == 0 then
      return 1
    else
      return call_variadic(recursive_call, n - 1)
    end
  end
  return call_variadic(recursive_call, 1000)
end