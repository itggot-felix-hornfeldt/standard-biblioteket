=begin
Public -  function that takes away unwanted symbols

str = holds the string that is to be manipulated
i = integer that acts as index holder
output = what is to be outputed

Example:
strip_func("\t\n Grillkorv\n")
# => "Grillkorv"
=end

def strip_func(str)
    return "You need string" if str.length == 0
    i = 0
    output = ""
    while i < str.length
        if str[i] != "\t"
            if str[i] != " "
                if str[i] != "\n"
                    output << str[i]
                end
            end
        end
        i += 1
    end
    return output
end

p strip_func("\t\n lalalalal \t \n\n\nl")