def count(str, char)
    return "You need to write something" if str.length == 0
    index = 0
    output = 0
    while index < str.length
        if str[index] === char
            output += 1
        end
        index += 1
    end
    return output
end

p count("trent alexander arnold the first of his kind", "t")