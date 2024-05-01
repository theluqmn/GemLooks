require 'time'

# Linear search function
def linear_search(array, target)
    puts "\n- Linear search"

    # Start the timer
    start_time = Time.now

    # Loops through the array
    array.each_with_index do |element, index|
        # Puts out where the target is found
        if element == target
            # Measure the time it took for the search
            end_time = Time.now
            # Calculate the time it took for the search
            time_taken = end_time.to_f - start_time.to_f

            puts "Target #{target} found at index #{index}\nTime taken: #{(time_taken*100000000).round} ms"
            return index
        end
    end

    # Measure the time it took for the search
    end_time = Time.now
    # Calculate the time it took for the search
    time_taken = end_time.to_f - start_time.to_f

    puts "Target #{target} not found\nTime taken: #{(time_taken*100000000).round} ms"
    return nil
end

# Binary search function
def binary_search(array, target)
    puts "\n- Binary search"

    # Start the timer
    start_time = Time.now

    # Sets the low and high indexes
    low = 0
    high = array.length - 1

    while low <= high
        # Finds the middle index
        mid = (low + high) / 2
        guess = array[mid]

        # Checks if the guess is the target
        if guess == target
            # Measure the time it took for the search
            end_time = Time.now
            # Calculate the time it took for the search
            time_taken = end_time.to_f - start_time.to_f

            puts "Target #{target} found at index #{mid}\nTime taken: #{(time_taken*100000000).round} ms"
            return mid
        
        # Checks if the guess is too high or too low
        elsif guess > target
            high = mid - 1
        
        else
            low = mid + 1
        end
    end

    # Measure the time it took for the search
    end_time = Time.now
    # Calculate the time it took for the search
    time_taken = end_time.to_f - start_time.to_f

    puts "Target #{target} not found\nTime taken: #{(time_taken*100000000).round} ms"
    return nil
end

binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 18)
linear_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 15)