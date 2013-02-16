
// our stuff
import myarray

main: func {

    ints := MyArray<Int> new(3)
    ints[0] = 1
    ints[1] = 2
    ints[2] = 3

    "each(): " println()
    ints each(|n|
        "%d" printfln(n)
    )

    floats := MyArray<Float> new(3)
    floats[0] = 0.1
    floats[1] = 0.2
    floats[2] = 0.3

    "each(): " println()
    floats each(|f|
        "%.2f" printfln(f)
    )

}

