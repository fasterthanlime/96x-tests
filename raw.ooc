
import myarray

main: func {

    MyArray<Int> new(3, [1, 2, 3] as Int*) map(|i| (i as Float) * 0.1) each(|v|
        "%.2f" printfln(v)
    )

}
