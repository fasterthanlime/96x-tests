
// our stuff
import myarray

main: func {

    floats := MyArray<Float> new(3)
    floats[0] = 0.1
    floats[1] = 0.2
    floats[2] = 0.3

    "floats each(): " println()
    floats each(|f|
        "%.2f" printfln(f)
    )

    ints := floats map(|v| (v * 10) as Int)

    "ints each(): " println()
    ints each(|n|
        "%d" printfln(n)
    )

}

