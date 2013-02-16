
Rucksack: class <T> {
    t: T

    init: func (=t) {
        "[%s] Inside init!" printfln(class name)
    }
    get: func -> T {
        "[%s] Inside get!" printfln(class name)
        t
    }
}

Inventory: cover <T> {
    t: T

    init: func@ (=t) {
        "[%s] Inside init!" printfln(This name)
    }
    get: func -> T {
        "[%s] Inside get!" printfln(This name)
        t
    }
}

main: func {
    {
        i := Rucksack new(13)
        v := i get()
        v toString() println()
    }

    {
        i := Inventory new(26)
        v := i get()
        v toString() println()
    }
}

