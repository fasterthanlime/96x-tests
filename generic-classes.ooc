
Inventory: cover <T> {
    t: T

    init: func@ (=t) {
        "Inside init!" println()
    }
    get: func -> T {
        "Inside get!" println()
        t
    }
}

main: func {
    "main 1" println()
    i := Inventory new(35)
    "main 2" println()
    v := i get()
    "main 3" println()
    v toString() println()
    "main 4" println()
}

