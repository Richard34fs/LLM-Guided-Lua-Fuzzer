local t = {}
for i=1,1000 do
t[i] = i
end
for i=1,999 do
t[tostring(i)] = i
end