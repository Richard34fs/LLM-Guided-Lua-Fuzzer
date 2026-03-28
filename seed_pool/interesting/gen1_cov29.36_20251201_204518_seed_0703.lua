do
  local t = {}

  local function test(x)
    for i = 1, x do
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
      do
        local key = "_" .. i
        t[key] = i
      end
    end
  end

  test(1000)
end