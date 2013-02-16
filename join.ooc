
import myarray

main: func {

    MyArray<Char> new(3, ['o', 'o', 'c'] as Char*) join(|c| "%c" format(c)) println()

}
