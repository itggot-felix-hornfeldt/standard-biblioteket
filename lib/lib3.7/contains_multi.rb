def contains_multi(str, substr)
    return "Syntax ERROR" if str.length == 0 || substr.length == 0
    return false if substr.length > str.length
    output = false
    i = 0
    while i < str.length && output == false
        start = false
        if substr[0] == str[i]
            z = 0
            start = true
            while z < substr.length
                if substr[z] != str[i+z]
                    start = false
                end
                z += 1
            end
        end
        if start == true
            output = true
        end
        i += 1
    end
    return output
end

str = "Hello my little friend"
substr = "little friend"

p contains_multi(str, substr)