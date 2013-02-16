
// our stuff
import myarray

main: func {

    ints := MyArray<Int> new(4)
    ints[0] = 1
    ints[1] = 2
    ints[2] = 3
    ints[3] = 4

    "Regular foreach: " println()
    for (i in 0..ints length) {
        ints[i] toString() println()
    }

    "each(): " println()
    ints each(|n|
        n toString() println()
    )

    ants := MyArray<Int> new(2)
    ants[0] = 5
    ants[1] = 6

    unts := ints + ants

    "unts each(): " println()
    unts each(|n|
        n toString() println()
    )

    data := gc_malloc(Int size * 3) as Int*
    data[0] = 1
    data[1] = 2
    data[2] = 3
    onts := MyArray<Int> new(3, data)

    "from raw data: " println()
    unts each(|n|
        n toString() println()
    )

}

