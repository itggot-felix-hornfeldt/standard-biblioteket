def is_empty_str(str)
    return true if str.length === 0
    return false if str.length > 0
end

p is_empty_str("f")