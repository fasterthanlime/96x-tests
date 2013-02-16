
// our stuff
import myarray

// sdk stuff
import structs/ArrayList

main: func {
    ints := MyArray<Int> new(1)
    ints[0] = 1

    ants := MyArray<Int> new(1)
    ants[0] = 2

    onts := MyArray<Int> new(1)
    onts[0] = 3
    
    list := ArrayList<MyArray<Int>> new()
    list add(ints). add(ants). add(onts)

    list each(|v|
        v[0] toString() println()
    )
}

