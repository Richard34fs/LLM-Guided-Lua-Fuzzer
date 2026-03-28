t = {}
t[2 + "3"] = 4 * "5"
do
    for i = 1, 10 do
        t[i] = i .. ""
    end
end
print(t["5"])