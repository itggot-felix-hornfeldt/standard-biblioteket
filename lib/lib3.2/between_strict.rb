def between_strict(num, par1, par2)
    return true if num > par1 && num < par2
    return false if num <= par1 || num >= par2
end

p between_strict(2, 1, 7)