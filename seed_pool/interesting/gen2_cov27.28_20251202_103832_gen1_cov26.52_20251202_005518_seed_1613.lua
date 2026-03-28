function generate_code(str)
  local result = {
    a = 10;
    b = function() return "test" end;
    c = {"nested", "table"},
    d = {e = {f = 20}}
  }
  for i = 1, #str do
    result[string.sub(str, i, i)] = string.rep(string.sub(str, i, i), 20)
  end
  return result
end