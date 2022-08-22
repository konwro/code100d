fun main(args: Array<String>) {
    val str = "This is a test string"
    val ch = 't'
    var freq = 0

    for (i in 0..str.length - 1) {
        if (ch == str[i]) {
            ++freq
        }
    }
    println("Tested string: ")
    println("$str")
    println("")
    println("Frequency of character $ch :") 
    println("$freq")
}

// OUTPUT:
// Tested string: 
// This is a test string

// Frequency of character t :
// 3
