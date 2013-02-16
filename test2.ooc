
// our stuff
import myarray

main: func {

    floats := MyArray<Float> new(3)
    floats[0] = 0.1
    floats[1] = 0.2
    floats[2] = 0.3

    "each(): " println()
    floats each(|f|
        "%.2f" printfln(f)
    )

}

