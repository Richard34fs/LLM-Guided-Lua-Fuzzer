function dynamicChunkLoad(str)
  local code = ""
  for i = 1, 100 do
    code = code .. string.rep(str, i) .. "\n"
  end
  code = string.gsub(code, "abc", "def")

  local f = loadstring(code)
  return f()
end