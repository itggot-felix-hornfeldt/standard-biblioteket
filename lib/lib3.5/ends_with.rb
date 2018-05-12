# Public - returns the last char in str
#
# str = holds string
#
# Example:
#
# ends_with("hello!")
# #=> "!"

def ends_with(str)
    return "You need string" if str.length === 0
    return str[str.length-1]
end

p ends_with("nfsdfsfsdö")