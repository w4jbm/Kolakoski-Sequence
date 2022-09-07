# Calculate Kolakoski Sequence in Julia
#
# by James McClanahan, W4JBM

# How many values of sequence will we calculate?
global kseq_length = 55

# Initialize the Index we use to go through the array
global kseq_index = 3

# We will write alternating 1s and 2s
global write_value = 1

# Create and initialize an array with the first 3 values
kseq = Array{Int64}(undef, 3)
kseq[1] = 1
kseq[2] = 2
kseq[3] = 2

# To simplify things, we have effectively done the first two iterations
# as part of the initialization. We pick up by reading element 3 as an
# input, and then writing two 1s. Then we are off to the races until
# the array is larger than the size we want (kseq_length).

while length(kseq) < kseq_length

    global kseq_index
    global write_value
    
    # Write however many of the current symbol we should
    write_count = kseq[kseq_index]
    for i in 1:write_count
        push!(kseq, write_value)
    end

    # Now get ready to write the other symbol on the next pass
    if write_value == 1
        write_value = 2
    else
        write_value = 1
    end

    # Increment the index pointer into the decoded array
    kseq_index += 1
end

println("Number of values calculated: ", length(kseq))
println(kseq)
