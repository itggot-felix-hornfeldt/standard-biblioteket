def absolute(num)
    return num if num >= 0
    return num * -1 if num < 0
end

p absolute(-4)