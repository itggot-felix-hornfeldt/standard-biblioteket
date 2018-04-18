def remove(str, char)
    output = ""
    i = 0
    while i < str.length
        if str[i] != char
            output << str[i]
        end
        i += 1
    end
    return output
end

p remove("trent alexander arnold the first of his kind", "t")