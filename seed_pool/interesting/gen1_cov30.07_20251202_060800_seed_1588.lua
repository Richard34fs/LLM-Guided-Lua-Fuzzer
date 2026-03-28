function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    if i % 2 == 0 then
      result = result .. string.rep(string.sub(s, i, i), 3)
    else
      result = result .. string.gsub(string.sub(s, i, i), ".", "-")
    end
  end
  return result
end
code_as_string = "function manipulate_string(s)\nlocal result = \"\"\nfor i = 1, #s do\nif i % 2 == 0 then\nresult = result .. string.rep(string.sub(s, i, i), 3)\nelse\nresult = result .. string.gsub(string.sub(s, i, i), \".\", \"-\")\nend\nend\nreturn result\nend"
load_function = load or loadstring or loadfile
mutated_code = load_function(code_as_string)