# Public - replaces char with another char
#
# char = holds char that is to be replaced
# rep = holds replace char
#
# Example:
#
# replace_1("hello", "h", "g")
# #=> "gello"

def replace_1(str, char, rep)
    return "You need to write" if str.length === 0
    i = 0
    output = ""
    while i < str.length
        if str[i] === char
            output << rep
        else
            output << str[i]
        end
        i += 1
    end
    return output
end

p replace_1("kfsfjsfjakfäjhskäfahffoksfha", "ä", "b")