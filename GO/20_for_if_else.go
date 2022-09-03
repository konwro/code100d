package main

import "fmt"

// combo for-if-else
func main() {
	for m := 0; m < 10; m++ {
		if q := m; q%3 == 0 {
			fmt.Println(m, " is divisible by 3")
		} else {
			fmt.Println("Ain't no country like ", m, "!!!")
		}
	}
}


// // for
// func main() {

// 	// single condition loop
// 	i := 1
// 	for i <= 3 {
// 		fmt.Println(i)
// 		i += 1
// 	}

// 	// initial; condition; after
// 	for j := 2; j <= 10; j++ {
// 		fmt.Println(j)
// 	}

// 	// no condition - 4ever repeat until break
// 	for {
// 		fmt.Println("3ndl35 n16tm4r3 - the loop")
// 		break
// 	}

// 	// continue to the next iteration of the loop
// 	for n := 0; n <= 5; n++ {
// 		if n%2 == 0 {
// 			fmt.Println("YUP")
// 		}
// 		fmt.Println(n)
// 	}
// }
// // ref. https://gobyexample.com/

// if /else

// func main() {
// 	if 7%2 == 1 {
// 		fmt.Println("7 is odd")
// 	} else {
// 		fmt.Println("7 is even")
// 	}

// 	// conditionals
// 	if num := 9; num < 0 {
// 		fmt.Println(num, "is negative")
// 	} else if num < 10 {
// 		fmt.Println(num, "is single-digit")
// 	} else {
// 		fmt.Println(num, "is multi-digit")
// 	}

// }


// ref. https://gobyexample.com/
