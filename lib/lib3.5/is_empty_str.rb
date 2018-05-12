# Public - checks if string is empty
#
# str = holds unchecked string
#
# Example:
#
# is_empty_str("f")
# # => false
# is_empty_string("")
# # => true

def is_empty_str(str)
    return true if str.length === 0
    return false if str.length > 0
end

p is_empty_str("f")
