do
  local function aninhamento_blocos()
    do
      local a = {}
      local b = {}
      a[b] = 123
      print(a[b])
      local c = "4" + 2
      print(c)
      local d = 0
      for i = 1, 5 do
        d = d + 1
        d = d + 1.0
      end
      print(d)
    end
  end

  aninhamento_blocos()
end