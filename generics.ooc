// our stuff
import myarray

main: func {

    floats := makeArray(0.1, 0.2, 0.3)

    "each(): " println()
    floats each(|f|
        "%.2f" printfln(f)
    )

}

makeArray: func <T> (a, b, c: T) -> MyArray<T> {
    array := MyArray<T> new(3)
    array[0] = a 
    array[1] = b 
    array[2] = c 
    array
}

