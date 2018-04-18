def index_of_char(str, char)
    return false if str.length == 0
    i = 0
    while i < str.length
        if str[i] == char
            return i
        end
        i += 1
    end
    return nil
end

p index_of_char("hello","!")