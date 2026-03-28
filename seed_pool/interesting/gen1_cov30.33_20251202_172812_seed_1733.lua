local t = {}
t["123"] = "abc"
do
    print(t[123])

    for i = 1, 10 do
        local function f()
            t[i] = i .. ""
            print(t[i] + 1)
        end

        f()
    end
end