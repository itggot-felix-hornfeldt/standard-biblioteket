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