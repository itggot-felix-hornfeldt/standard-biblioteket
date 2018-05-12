def index_str_multi(str, substr)
    return "Syntax ERROR" if str.length == 0 || substr.length == 0
    return nil if substr.length > str.length
    output = nil
    i = 0
    while i < str.length && output == nil
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
            output = i
        end
        i += 1
    end
    return output
end

str = "foobar"
substr = "ba"

p index_str_multi(str, substr)