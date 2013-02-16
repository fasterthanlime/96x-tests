
Sack: cover template <Kalamazoo> {
    init: func@ {
        "Sack with elements of size %d" printfln(Kalamazoo size)
    }
}

Sock: cover <Calamar> {
    init: func@ {
        "Sock with elements of size %d" printfln(Calamar size)
    }
}

main: func {
    s1 := makeSack(Int)
    s2 := Sock<Int> new()
}

makeSack: func <Kilimandjaro> (Kilimandjaro: Class) -> Sack<Kilimandjaro> {
    Sack<Kilimandjaro> new()
}

