package main

import "log"
import "fmt"

func main() {

  fmt.Println("3nt3r n3w ch405")
	log.Print(" --> logged")
	
	fmt.Println("3nt3r oth3t 3l3m3nt: ")
	log.Print(" --> logged")

	var item string
  
	fmt.Scanln(&item)
	fmt.Println("entered: ", item)
	log.Print(" --> logged")

}
