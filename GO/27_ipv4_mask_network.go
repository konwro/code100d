/*
Get default network addressing values for an IP address
- default mask length
- leading ones
- mask
- network address
*/

package main

import (
	"fmt"
	"os"
	"net"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprint(os.Stderr,
			"Usage: %s dotted-ip-addr", os.Args[0])
		os.Exit(1)
	}
	dotAddr := os.Args[1]

	addr := net.ParseIP(dotAddr)
	if addr == nil {
		fmt.Println("Invalid address format")
		os.Exit(1)
	}
	mask := addr.DefaultMask()
	network := addr.Mask(mask)
	ones, bits := mask.Size()
  
	fmt.Println("Provided IPv4 address: ", addr.String())
	fmt.Println("IP address Breakdown:")
	fmt.Println("Default mask length: ", bits)
	fmt.Println("Leading ones count: ", ones)
	fmt.Println("Mask is (hex) ", mask.String())
	fmt.Println("Network is ", network.String())
	os.Exit(0)

}
