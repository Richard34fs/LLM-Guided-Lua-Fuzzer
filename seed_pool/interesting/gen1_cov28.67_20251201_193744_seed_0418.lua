t = {}
for i=1,1000 do
    t[tostring(i)] = i
    t[i] = i
end
local chunk = "t = {}\nfor i=1,1000 do\n    t[tostring(i)] = i\n    t[i] = i\nend"
load(chunk)