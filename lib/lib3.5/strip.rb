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