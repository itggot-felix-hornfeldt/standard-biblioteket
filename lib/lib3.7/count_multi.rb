def count_multi(str, substr)
    return "Syntax ERROR" if str.length == 0 || substr.length == 0
    return nil if substr.length > str.length
    output = 0
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
        if start == true
            output += 1
            i += z
        end
        i += 1
    end
    return output
end

blet = "omg omg omg omg omg omg omg omg omg"
ohhh = "omg"

p count_multi(blet, ohhh)