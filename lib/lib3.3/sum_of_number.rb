def sum_of_number(num)
    return 0 if num == 0 || num < 0
    sum = 0
    i = 0
    while i <= num
        sum += i
        i += 1
    end
    return sum
end

p sum_of_number(10)