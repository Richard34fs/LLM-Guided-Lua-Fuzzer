local _table = table -- shadowing `table` built-in
local _ipairs = ipairs -- shadowing `ipairs` built-in
local _print = print -- shadowing `print` built-in
function coroutine_recursion(n)
  local co = coroutine.create(function()
    if n > 0 then
      _print("Coroutine", n, "starting")
      coroutine_recursion(n - 1)
      _print("Coroutine", n, "ending")
    end
  end)
  return co
end