def factorial_func(num)
    return 0 if num == 0 || num < 0
    sum = 1
    i = 1
    while i <= num
        sum *= i
        i += 1
    end
    return sum
end

p factorial_func(10)