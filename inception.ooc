
// our stuff
import myarray

main: func {
    ints := MyArray<Int> new(1)
    ints[0] = 1

    ants := MyArray<Int> new(1)
    ants[0] = 2

    onts := MyArray<Int> new(1)
    onts[0] = 3
    
    arr := MyArray<MyArray<Int>> new(3)
    arr[0] = ints
    arr[1] = ants
    arr[2] = onts

    arr each(|v|
        v[0] toString() println()
    )
}


