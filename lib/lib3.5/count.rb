# Public - counts the number of times a char is in str
#
# str = holds string
# char = holds char
# index = index holder
#
# Example:
#
# count("hello", "l")
# #=> 2

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