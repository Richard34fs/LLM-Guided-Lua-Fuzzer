local t = {}
setmetatable(t, {
  __index = function(table, key)
    if key == "foo" then
      return 42
    elseif key == 4 then
      return "bar"
    end
  end
})
print(t["foo"] + #t[4])