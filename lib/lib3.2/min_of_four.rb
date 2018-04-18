def min_of_four(num1, num2, num3, num4)
    return num1 if num1 <= num2 && num1 <= num3 && num1 <= num4
    return num2 if num2 <= num1 && num2 <= num3 && num2 <= num4
    return num3 if num3 <= num1 && num3 <= num2 && num3 <= num4
    return num4 if num4 <= num1 && num4 <= num2 && num4 <= num3
end

p min_of_four(9, 15, 9, 8)