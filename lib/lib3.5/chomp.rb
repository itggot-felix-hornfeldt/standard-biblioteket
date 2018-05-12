# Public - replaces charachter
# 
# str = holds string
# char = holds characheter that is to be replaced
# rep = holds replace charchter
#
# Example:
#
# chomp_func("blet", "b", "f")
# #=> "flet"

def chomp_func(str, char, rep)
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

p chomp_func("tralala\n", "\n", "")