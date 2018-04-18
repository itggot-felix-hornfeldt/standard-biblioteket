def is_odd(num)
    return false if num%2 == 0
    return true if num%2 != 0
end

p is_odd(5)