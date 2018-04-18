def is_neg(num)
    return false if num >= 0
    return true if num < 0
end

p is_neg(-4)