"""
Calculate Kolakoski Sequence in Python

by James McClanahan, W4JBM

Original Version in BASIC written in May 2018.

Python version written in February 2019.

"""

#initialize list with K sequence
#(easier to start at element 1 and waste element 0)

i =[0, 1, 2, 2]

# with Python, it turned out to be easier to initialize
# the first three elements of the sequence because while
# use an append() function to add to a list instead of
# using absolute indexing to place values in an array

n1 = 1
n2 = 2
p1 = 3

## my sense of symmetry likes that last set of constants...

while len(i) < 55:
    for x in range(0, i[p1]):
        i.append(n1)       #add new decoded items to list

    ## for debugging or to watch the list build, uncomment
    ## the following print()
    ## print(i[1:len(i)])

    p1 = p1 +1
    n1, n2 = n2, n1         #swap n1 and n2
    
print("Kolakkoski Sequence to %d digits:" % len(i))
for x in range (1, len(i)):
  print (i[x], end="")
print("")

