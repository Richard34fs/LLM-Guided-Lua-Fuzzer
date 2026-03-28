local function massive_string(n)
  local s = ""
  for i = 1, n do
    s = s .. string.rep("A", i) .. "\n"
  end
  return string.gsub(s, "A", "")
end
do
  local function inner()
    local function closure()
      if true then
        if false then
          print("Hello world!")
        end
      end
    end
  end

  local function local_function()
    if true then
      if false then
        print("Hello world!")
      end
    end
  end
end