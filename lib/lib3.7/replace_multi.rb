def replace_multi(str, substr, repstr)
    return "Syntax ERROR" if str.length == 0 || substr.length == 0
    return false if substr.length > str.length
    output = ""
    i = 0
    while i < str.length
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
        p start
        if start == true
            j = 0
            while j < repstr.length 
                output += repstr[j]
                j += 1
            end
            i += z
        else
            output += str[i]
            i += 1
        end
    end
    return output
end

p replace_multi("foobar hell bar barbar", "bar", "shite")