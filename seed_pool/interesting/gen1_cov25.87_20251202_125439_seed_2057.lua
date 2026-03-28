local function manipulate_massive_strings()
  do
    local str = ""
    for i = 1, 1000 do
      str = str .. string.rep("a", 1000)
    end
    str = string.gsub(str, "aaaaaa", "")
    return str
  end
end