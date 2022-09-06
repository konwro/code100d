//Panic- A common use of panic is to abort if a function returns an error value
// that we don’t know how to (or want to) handle. Here’s an example of panicking
// if we get an unexpected error when creating a new file.

package main

import "os"

func main() {
	panic("pr0bl3m !$% - u n33d t0 p4n1c n0w!")

	_, err := os.Create("/tmp/file")
	if err != nil {
		panic(err)
	}
}

//in Go it is idiomatic to use error-indicating return values wherever possible.
