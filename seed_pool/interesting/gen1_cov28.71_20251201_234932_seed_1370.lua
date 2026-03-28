local metatable = {
  __index = function(s, key)
    if key == "manipulate_string" then
      return function(self)
        local result = ""
        for i = 1, #self do
          if string.find(self, ".*") then
            result = result .. string.rep(self, i)
          else
            result = result .. self
          end
        end
        return result
      end
    end
  end
}
setmetatable(string, metatable)