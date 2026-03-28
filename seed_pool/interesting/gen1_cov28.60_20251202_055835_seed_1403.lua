function manipulate_string(str)
  local result = ""
  for i = 1, #str do
    local char = string.sub(str, i, i)
    if i % 2 == 0 then
      result = result .. string.rep(char, 5)
    else
      result = result .. string.gsub(char, ".", "")
    end
  end
  return result
end

function mutate_code()
  local code = "function manipulate_string(str)\nlocal result = \"\"\nfor i = 1, #str do\nlocal char = string.sub(str, i, i)\nif i % 2 == 0 then\nresult = result .. string.rep(char, 5)\nelse\nresult = result .. string.gsub(char, \".\", \"\")\nend\nend\nreturn result\nend"
  local f = load(code)
  return f()
end