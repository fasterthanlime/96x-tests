
/**
 * With template, everything is inlined - the struct
 * type is written inline, the methods become macros,
 * so there should be no symbol conflict
 */
MyArray: cover template <T> {
    length: Int
    data: T*

    init: func@ (=length) {
        data = gc_malloc(T size * length)
    }

    init: func@ ~literal (=length, =data)

    get: func (index: Int) -> T {
        _checkIndex(index)
        data[index]
    }

    set: func@ (index: Int, value: T) {
        _checkIndex(index)
        data[index] = value
    }

    _checkIndex: func (index: Int) {
        if (index < 0 || index >= length) {
            Exception new("Out of bounds array access: %d should be in %d..%d" \
                format(index, 0, length)) throw()
        }
    }

    operator [] (i: Int) -> T {
        get(i)
    }

    operator []= (i: Int, v: T) {
        set(i, v)
    }

    operator + (other: This<T>) -> This<T> {
        append(other)
    }

    append: func (other: This<T>) -> This<T> {
        result := This<T> new(length + other length)

        i := 0
        doAppend := func (v: T) {
            result[i] = v
            i += 1
        }

        each(|v| doAppend(v))
        other each(|v| doAppend(v))
        result
    }

    each: func (f: Func (T)) {
        for (i in 0..length) {
            f(this[i])
        }
    }

    map: func <U> (f: Func (T) -> U) -> MyArray<U> {
        other := MyArray<U> new(length)
        for (i in 0..length) {
            other set(i, f(this[i]))
        }
        other
    }

    join: func (f: Func (T) -> String, separator := "") -> String {
        b := Buffer new()
        first := true

        each(|v|
            if (first) {
                first = false
            } else {
                b append(separator)
            }
            b append(f(v))
        )
        b toString()
    }

    join: func ~auto (separator := "") -> String {
        result: String
        _defaultToString(T, |f|
            result = join(|v| f(v), separator)
        )
        result
    }
}

_defaultToString: func <T> (T: Class, cb: Func (Func (T) -> String)) {
    match T {
        case Char =>
            cb(|v| "%c" format(v as Char))
        case String =>
            cb(|v| v as String)
        case Float =>
            cb(|v| "%.2f" format(v as Float))
        case Int =>
            cb(|v| "%d" format(v as Int))
        case =>
            cb(|v| "[%s]" format(T name))
    }
}

