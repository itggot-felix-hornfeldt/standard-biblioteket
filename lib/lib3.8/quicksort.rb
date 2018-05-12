# Public: sorts an array using recursion.
# 
# arr - holds the input array.
# output - outputs the sorted list.
# i - index holder.
# smaller - holds the numbers less than pivot.
# bigger - holds the numbers bigger than pivot.
# pivot - start number.
# 
# Examples
# 
#   quick([1,3,5,2,4])
#   # => [1,2,3,4,5]
#
# Returns the sorted array.
def quick(arr)
    if arr.length == 0
        return []
    end
    i = 0
    output = []
    pivot = arr[arr.length-1]
    bigger = []
    smaller = []
    while i < arr.length - 1
        if arr[i] > pivot
            bigger << arr[i]
        else
            smaller << arr[i]
        end
        i += 1
    end
    output = quick(smaller) + [pivot] + quick(bigger)
    return output
end

p quick([4,2,3,1,5,5,36,4,14,346,31,3,15,3451,3,15,745,1,1,56,5,1,4,14,6,341,7562525])