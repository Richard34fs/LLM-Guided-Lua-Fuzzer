local t = {}
for i=1,10 do
  t[i] = i
  t[i] = tostring(t[i])
  t[i] = tonumber(t[i])
end

function handleError(err)
  print("An error occurred: " .. err)
end

pcall(function()
  print(t[5] + 5)
  error("This is an intentional error.")
end, handleError)