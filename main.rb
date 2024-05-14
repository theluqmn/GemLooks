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

binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 18)
linear_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 15)
depth_first_search({ 'A' => ['B', 'C'], 'B' => ['A', 'D', 'E'], 'C' => ['A', 'F'], 'D' => ['B'], 'E' => ['B'], 'F' => ['C'] }, 'A')
