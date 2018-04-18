def contains_char(str, char)
    return false if str.length == 0
    i = 0
    output = false
    while i < str.length && output === false
        if str[i] == char
            output = true
        end
        i += 1
    end
    return output
end

p contains_char("hello","o")