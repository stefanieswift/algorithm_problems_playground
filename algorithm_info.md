binary search 
-----
- finding an item in an ordered list of items (looks at small fraction of numbers)
- worst case scenerio is O(log n)
- best case is O(1) 
- saying that binary search runs in O(n) would be accurate but not precise because it will grow no faster than O(n) time

linear search 
----
- looks at all numbers in an ordered list (that is why this is not a good option)

big-theta notation 
----
- typical linear search would be c1 * n + c2 (where c1 = sum of times of computation in one loop iteration, n is the number of times we iterate, and c2 is the overhead - setting up loop possibly returning negative one)
- When we use big-Θ notation, we're saying that we have an asymptotically tight bound on the running time. "Asymptotically" because it matters for only large values of n
- we use to asymptotically bound the growth of runnning time within contasts below and above

big-o notation
----
- use big-o for asymptotic upper bounds
- not that accurate way of describing how long search will take


big-omega notation
----
- use big-Ω for the asymptotic lower bound 
- ex: the running time is at least the  big-Ω
- not that accurate way of describing how long search will take


##Constant growth 
~~~
A function has "constant" growth if its output does not change based on the input, the nn. The easy way to identify constant functions is find those that have no nn in their expression anywhere, or have n^0n
​0. In this case, 11 and 10001000 are constant.
~~~


##Linear Growth
~~~
A function has "linear" growth if its output increases linearly with the size of its input. The way to identify linear functions is find those where nn is never raised to a power (although n^1 n​1 is OK) or used as a power. In this case, 3n3n and (3/2)n(3/2)n are linear.
~~~~

##Polynomial Growth
~~~
A function has "polynomial" growth if its output increases according to a polynomial expression. The way to identify polynomial functions is to find those where nn is raised to some constant power. In this case, 2n^32n and 3n^23n2
​are polynomial.
~~~

##Exponential Growth
~~~
A function has "exponential" growth if its output increases according to an exponential expression. The way to identify exponential functions is to find those where a constant is raised to some expression involving nn. In this case, 2^n2​n and (3/2)^n(3/2)​n are exponential.
~~~

Sorting 
----
- ![](/Users/stefanieswift/Desktop/hello.png)
- Selection Sort
	- Repeat finding the next-smallest card, and swapping it into the correct position until the array is sorted.
	- The time is Theta(n^2)
- Insertion Sort
	- Loop over positions in the array, starting with index 1. Each new position is like the new card handed to you by the dealer, and you need to insert it into the correct place in the sorted subarray to the left of that position. Here's a visualization that steps through that:
	- Worst case: Theta(n^2) 
	- Best case: \Theta(n)
	- Average case for a random array: \Theta(n^2)
	- "Almost sorted" case: \Theta(n).
- Merge Sort
	- ![pic](https://s3.amazonaws.com/ka-cs-algorithms/merge_sort_recursion.png)
- Quicksort
	- ![pic](https://s3.amazonaws.com/ka-cs-algorithms/qsort_recursion.png)
- Graph 
	- ![pic](https://s3.amazonaws.com/ka-cs-algorithms/social_network.png)
	- the names are the vertices (one name is a vertex) and an edge is the line connecting them
	- graphs can be directed
		- ![pic](https://s3.amazonaws.com/ka-cs-algorithms/goalie_gear.png)
- Breadth-first search
	- Breadth-first search, also known as BFS, finds shortest paths from a given source vertex to all other vertices, in terms of the number of edges in the paths.
	- Breadth-first search assigns two values to each vertex vv:
		- A distance, giving the minimum number of edges in any path from the source vertex to vertex vv.
		- The predecessor vertex of vv along some shortest path from the source vertex. The source vertex's predecessor is some special value, such as null, indicating that it has no predecessor.
- Depth First Search
	- is an algorithm for traversing or searching tree or graph data structures. One starts at the root (selecting some arbitrary node as the root in the case of a graph) and explores as far as possible along each branch before backtracking.
- Binary search tree
	- ![bst](http://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Binary_search_tree.svg/200px-Binary_search_tree.svg.png)

Main Rules of Recursion
----
- Each recursive call should be on a smaller instance of the same problem, that is, a smaller subproblem.
- The recursive calls must eventually reach a base case, which is solved without further recursion.

#Data Structures
-----

Linked Lists
-----
- In computer science, a linked list is a data structure consisting of a group of nodes which together represent a sequence. Under the simplest form, each node is composed of data and a reference (in other words, a link) to the next node in the sequence; more complex variants add additional links. This structure allows for efficient insertion or removal of elements from any position in the sequence.Linear collection of data elements is called node pointers
- ![ll](http://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Singly-linked-list.svg/408px-Singly-linked-list.svg.png)


Binary Trees 
-----
- A binary tree is a tree-like structure that is rooted and in which each vertex has at most two children and each child of a vertex is designated as its left or right child (West 2000, p. 101). In other words, unlike a proper tree, the relative positions of the children is significant.
- ![bt](data:image/png;base64,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)

Tries 
-----
- In computer science, a trie, also called digital tree and sometimes radix tree or prefix tree (as they can be searched by prefixes), is an ordered tree data structure that is used to store a dynamic set or associative array where the keys are usually strings. 
- Unlike a binary search tree, no node in the tree stores the key associated with that node; instead, its position in the tree defines the key with which it is associated. All the descendants of a node have a common prefix of the string associated with that node, and the root is associated with the empty string. 
- Values are normally not associated with every node, only with leaves and some inner nodes that correspond to keys of interest. For the space-optimized presentation of prefix tree, see compact prefix tree.
- ![trie](http://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Trie_example.svg/250px-Trie_example.svg.png)

Stacks 
-----
- In computer science, a stack or LIFO (last in, first out) is an abstract data type that serves as a collection of elements, with two principal operations: push, which adds an element to the collection, and pop, which removes the last element that was added.
- A stack may be implemented to have a bounded capacity. If the stack is full and does not contain enough space to accept an entity to be pushed, the stack is then considered to be in an overflow state. The pop operation removes an item from the top of the stack. A pop either reveals previously concealed items or results in an empty stack, but, if the stack is empty, it goes into underflow state, which means no items are present in stack to be removed.
- A stack is a restricted data structure, because only a small number of operations are performed on it. The nature of the pop and push operations also means that stack elements have a natural order. Elements are removed from the stack in the reverse order to the order of their addition. Therefore, the lower elements are those that have been on the stack the longest.
- ![stack](http://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Data_stack.svg/200px-Data_stack.svg.png)

Queues
-----
- In computer science, a queue is a particular kind of abstract data type or collection in which the entities in the collection are kept in order and the principal (or only) operations on the collection are the addition of entities to the rear terminal position, known as enqueue, and removal of entities from the front terminal position, known as dequeue. 
- This makes the queue a First-In-First-Out (FIFO) data structure. In a FIFO data structure, the first element added to the queue will be the first one to be removed. This is equivalent to the requirement that once a new element is added, all elements that were added before have to be removed before the new element can be removed. Often a peek or front operation is also entered, returning the value of the front element without dequeuing it. A queue is an example of a linear data structure, or more abstractly a sequential collection.
- Queues provide services in computer science, transport, and operations research where various entities such as data, objects, persons, or events are stored and held to be processed later. In these contexts, the queue performs the function of a buffer.
- Queues are common in computer programs, where they are implemented as data structures coupled with access routines, as an abstract data structure or in object-oriented languages as classes. Common implementations are circular buffers and linked lists.
- ![queue](http://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Data_Queue.svg/300px-Data_Queue.svg.png)

Vectors
-----
- Vectors are much like arrays. Operations on a vector offer the same big O as their counterparts on an array. Like arrays, vector data is allocated in contiguous memory.
- Unlike arrays, which are always of a fixed size, vectors can be grown. This can be done either explicitly or by adding more data. In order to do this efficiently, the typical vector implementation grows by doubling its allocated space (rather than incrementing it) and often has more space allocated to it at any one time than it needs. This is because reallocating memory can sometimes be an expensive operation.

ArrayLists
-----
- An ArrayList is a dynamic data structure, meaning items can be added and removed from the list. A normal array in java is a static data structure, because you stuck with the initial size of your array.


Hash Tables
------
- In computing, a hash table (hash map) is a data structure used to implement an associative array, a structure that can map keys to values. A hash table uses a hash function to compute an index into an array of buckets or slots, from which the correct value can be found.

#concepts
----
bit manipulation
-----
- Bit manipulation is the act of algorithmically manipulating bits or other pieces of data shorter than a word. Programming tasks that require bit manipulation include low-level device control, error detection and correction algorithms, data compression, encryption algorithms, and optimization. For most other tasks, modern programming languages allow the programmer to work directly with abstractions instead of bits that represent those abstractions. Source code that does bit manipulation makes use of the bitwise operations: AND, OR, XOR, NOT, and bit shifts.
- Bit manipulation, in some cases, can obviate or reduce the need to loop over a data structure and can give many-fold speed ups, as bit manipulations are processed in parallel, but the code can become rather more difficult to write and maintain.


memory (stack v. heap)
-----
- Stack: What is the stack? It's a special region of your computer's memory that stores temporary variables created by each function (including the main() function). The stack is a "FILO" (first in, last out) data structure, that is managed and optimized by the CPU quite closely. Every time a function declares a new variable, it is "pushed" onto the stack. Then every time a function exits, all of the variables pushed onto the stack by that function, are freed (that is to say, they are deleted). Once a stack variable is freed, that region of memory becomes available for other stack variables.
- Heap: The heap is a region of your computer's memory that is not managed automatically for you, and is not as tightly managed by the CPU. It is a more free-floating region of memory (and is larger). To allocate memory on the heap, you must use malloc() or calloc(), which are built-in C functions. Once you have allocated memory on the heap, you are responsible for using free() to deallocate that memory once you don't need it any more. If you fail to do this, your program will have what is known as a memory leak. That is, memory on the heap will still be set aside (and won't be available to other processes). As we will see in the debugging section, there is a tool called valgrind that can help you detect memory leaks.

Stack
- very fast access
- don't have to explicitly de-allocate variables
- space is managed efficiently by CPU, memory will - not become fragmented
- local variables only
- limit on stack size (OS-dependent)
- variables cannot be resized

Heap
- variables can be accessed globally
- no limit on memory size
- (relatively) slower access
- no guaranteed efficient use of space, memory may - become fragmented over time as blocks of memory  are allocated, then freed
- you must manage memory (you're in charge of allocating and freeing variables)
- variables can be resized using realloc()


