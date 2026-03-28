function recurse(...)
    local num_args = select("#", ...)

    while num_args > 0 do
        print("Arguments remaining:", num_args)
        num_args = num_args - 1
    end

    print("No more arguments.")
end

recurse(1, 2, 3, 4, 5)