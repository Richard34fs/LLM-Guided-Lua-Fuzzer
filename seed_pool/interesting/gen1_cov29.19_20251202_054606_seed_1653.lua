do
  local function inner()
    t = {}
    for i=1,1000 do
      key = tostring(i) .. "a"
      t[key] = i
    end
  end

  inner()
end