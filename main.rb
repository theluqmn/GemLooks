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

# Depth-first search function
def depth_first_search(graph, start_node)
    puts "\n- Depth-first search"

    # Start the timer
    start_time = Time.now

    # Create a stack to keep track of the nodes to visit
    stack = [start_node]

    # Create a set to keep track of the nodes that have been visited
    visited = Set.new

    # Loop until the stack is empty
    while !stack.empty?
        # Get the current node from the stack
        current_node = stack.pop

        # If the current node has not been visited, mark it as visited and add its neighbors to the stack
        if !visited.include?(current_node)
            visited.add(current_node)

            # Print the current node
            puts "Visiting node: #{current_node}"

            # Add the neighbors of the current node to the stack
            graph[current_node].each do |neighbor|
                stack.push(neighbor)
            end
        end
    end

    # Measure the time it took for the search
    end_time = Time.now
    # Calculate the time it took for the search
    time_taken = end_time.to_f - start_time.to_f

    puts "\nTime taken: #{(time_taken*100000000).round} ms"
end

# Breadth-first search function
def breadth_first_search(graph, start_node)
    puts "\n- Breadth-first search"

    # Start the timer
    start_time = Time.now

    # Create a queue to keep track of the nodes to visit
    queue = [start_node]

    # Create a set to keep track of the nodes that have been visited
    visited = Set.new

    # Loop until the queue is empty
    while !queue.empty?
        # Get the current node from the queue
        current_node = queue.shift

        # If the current node has not been visited, mark it as visited and add its neighbors to the queue
        if !visited.include?(current_node)
            visited.add(current_node)

            # Print the current node
            puts "Visiting node: #{current_node}"

            # Add the neighbors of the current node to the queue
            graph[current_node].each do |neighbor|
                queue.push(neighbor)
            end
        end
    end
end

# Bubble sort function
def bubble_sort(array)
        # Start the timer
    start_time = Time.now

    # Loop through the array, comparing adjacent elements
    array.length.times do
        swapped = false

        # Compare adjacent elements and swap if necessary
        (0...array.length - 1).each do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end

        # If no swaps were made, the array is sorted
        break unless swapped
    end

    # Measure the time it took for the sort
    end_time = Time.now
    # Calculate the time it took for the sort
    time_taken = end_time.to_f - start_time.to_f

    puts "\n- Bubble sort"
    puts "Sorted array: #{array}"
    puts "Time taken: #{(time_taken*100000000).round} ms"
end

# Selection sort function
def selection_sort(array)
    # Start the timer
    start_time = Time.now

    # Loop through the array, finding the minimum element
    array.length.times do |i|
        min_index = i

        # Find the index of the minimum element
        (i + 1...array.length).each do |j|
            if array[j] < array[min_index]
                min_index = j
            end
        end

        # Swap the minimum element with the current element
        array[i], array[min_index] = array[min_index], array[i]
    end

    # Measure the time it took for the sort
    end_time = Time.now
    # Calculate the time it took for the sort
    time_taken = end_time.to_f - start_time.to_f

    puts "\n- Selection sort"
    puts "Sorted array: #{array}"
    puts "Time taken: #{(time_taken*100000000).round} ms"
end

# Insertion sort function
def insertion_sort(array)
    # Start the timer
    start_time = Time.now

    # Loop through the array, starting from the second element
    (1...array.length).each do |i|
        # Get the current element
        current = array[i]

        # Find the correct position for the current element
        j = i - 1
        while j >= 0 && array[j] > current
            array[j + 1] = array[j]
            j -= 1
        end

        # Insert the current element at the correct position
        array[j + 1] = current
    end

    # Measure the time it took for the sort
    end_time = Time.now
    # Calculate the time it took for the sort
    time_taken = end_time.to_f - start_time.to_f

    puts "\n- Insertion sort"
    puts "Sorted array: #{array}"
    puts "Time taken: #{(time_taken*100000000).round} ms"
end

# Merge sort function

# Quick sort function


# Heap sort function


# Radix sort function


binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 18)
linear_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 15)
depth_first_search({ 'A' => ['B', 'C'], 'B' => ['A', 'D', 'E'], 'C' => ['A', 'F'], 'D' => ['B'], 'E' => ['B'], 'F' => ['C'] }, 'A')
