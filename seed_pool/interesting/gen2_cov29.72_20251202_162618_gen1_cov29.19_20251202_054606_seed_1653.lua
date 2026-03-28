do
  local function inner()
    t = {}
    for i=1,1000 do
      key = tostring(i) .. "a"
      t[key] = i
    end
  end

  local function outer()
    inner()
  end

  outer()
end