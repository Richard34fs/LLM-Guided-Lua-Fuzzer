local function manipulate_massive_strings(n)
  local co = coroutine.create(function()
    local s = ""
    for i = 1, n do
      s = s .. string.rep("a", i) .. string.rep("b", i)
    end
    return string.gsub(s, "a+", "")
  end)

  coroutine.resume(co)
  return coroutine.yield()
end