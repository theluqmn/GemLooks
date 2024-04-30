def binary_search(list, number)
    puts list
end

# Linear search function
def linear_search(list, number)
    found = false
    index = 0
    for num in list
        index = index + 1

        #Check if num is number
        if num == number
            puts "Found #{number} at index #{index}"
            return index
            found = true
            break
        end
    end

    if found == false
        puts "Couldn't find #{number} in list"
    end
end

linear_search([10, 5, 8, 15, 0], 15)