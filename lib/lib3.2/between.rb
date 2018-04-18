def between(num, par1, par2)
    return false if num < par1 || num > par2
    return true if num >= par1 && num <= par2
    return true if num <= par1 && nm >= par2
    # return true if num >= par1 && num <= par2; else return false
end

p between(9, 7, 1)