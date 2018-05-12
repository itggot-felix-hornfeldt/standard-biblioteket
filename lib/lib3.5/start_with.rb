=begin
Public - the first letter in a string

str = variable that holds the string

Example:

starts_with("Hello")
# => "H"
=end

def starts_with(str)
    return "You need string" if str.length === 0
    return str[0]
end

p starts_with("nfsdfsfsdö")