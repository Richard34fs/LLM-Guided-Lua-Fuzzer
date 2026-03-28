local f = function(...)
  if select('#', ...) > 0 then
    return f(...)
  end
  print("Stack limit reached!")
end
f()
function g()
  local x = 10
  local function h()
    local x = 20
    print(x)
  end
  h()
  print(x)
end
g()