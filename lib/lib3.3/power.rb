def power_func(num, power_par)
    # return num ** power_par
    i = 0
    sum = 1
    while i < power_par
        sum *= num
        i += 1
    end
    return sum
end

p power_func(4, 2)