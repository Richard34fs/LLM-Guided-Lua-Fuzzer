function mutate(code)
    local identifiers = {
        'a', 'b', 'c', '_', '1', 'aa', 'bb', 'cc', '__', '___', '____',
        '_____', '_____', '_______', '________', '_________', '__________',
        'a_a', 'b_b', 'c_c', '_a', '_b', '_c', 'a_', 'b_', 'c_', 'a1', 'b1', 'c1',
        'a_a_a', 'b_b_b', 'c_c_c', 'a_a_a_a', 'b_b_b_b', 'c_c_c_c', 'a_a_a_a_a', 'b_b_b_b_b', 'c_c_c_c_c',
        'aaa', 'bbb', 'ccc', 'aaaa', 'bbbb', 'cccc', 'aaaaa', 'bbbbb', 'cccccc',
        '1_1', '2_2', '3_3', '11', '22', '33', '111', '222', '333',
        '_a_', '__a', '___a', '____a', '_____a', '______a',
        'a__', 'aa_', 'aaa', 'aaaa', 'aaaaa', 'aaaaaa',
        'a___', 'aa__', 'aaa_', 'aaaa', 'aaaaa', 'aaaaaa',
        'a____', 'aa___', 'aaa__', 'aaaa_', 'aaaaa', 'aaaaaa',
        'a_____', 'aa____', 'aaa___', 'aaaa__', 'aaaaa_', 'aaaaaa',
        'a______', 'aa_____', 'aaa____', 'aaaa___', 'aaaaa__', 'aaaaa_', 'aaaaaa'
    }

    local new_code = code:gsub('([%a_][%w_]*)', function(match)
        if match == '...' then
            return match
        end

        local index = math.random(#identifiers)
        return identifiers[index]
    end)

    return new_code
end