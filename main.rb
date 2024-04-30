# Linear search function
def linear_search(list, item, keep_search)
    found = false
    index = 0

    # Loops through the provided list
    for num in list
        index = index + 1

        # Check if num is number
        if num == item
            puts "Found #{item} at index #{index}"
            return index
            found = true
            if keep_search == false
                break
            end
        end
    end

    # If item isnt found
    if found == false
        puts "Couldn't find #{item} in list"
    end
end

linear_search([10, 5, 8, 15, 0, 20, 10], 10, true)