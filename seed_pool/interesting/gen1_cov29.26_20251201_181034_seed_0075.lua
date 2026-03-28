function test_integer_overflow()
  local max_int = 2^31-1
  coroutine.yield(max_int + 1)
  return -2^31
end
function test_division_by_zero()
  assert(pcall(function() return 1 / 0 end))
end
function test_min_max_integers()
  local min_int = -2^31
  local max_int = 2^31-1
  assert(min_int == -max_int-1)
end
local co = coroutine.create(test_integer_overflow)
coroutine.resume(co)
print(coroutine.status(co))