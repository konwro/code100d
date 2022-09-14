# TCP SERVER
import socket

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(('127.0.0.1',9999))
server.listen()

while True:
    client, address = server.accept()
    print(f"Connected to {address}")
    print(clinet.recv(1024).decode('utf-8'))
    client.send("Hello Client".encode('utf-8'))
    print(client.recv(1024).decode('utf-8'))
    client.send("Bye!".encode('utf-8'))
    client.close()


# TCP CLIENT
import socket

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.listen()

while True:
    client, address = server.accept()
    print(f"Connected to {address}")
    print(clinet.recv(1024))


    
# UDP SERVER
import socket

server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

server.bind(("127.0.0.1",9999))

message, address = server.recvfrom(1024)
print(message.decode('utf-8'))

server.sendto("Hello Client".encode('utf-8'), address)

# UDP CLIENT
import socket

client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

client.sendto("Hello Server!".encode('utf-8'), ("127.0.0.1",9999))
print(client.recvfrom(1024)[0].decode('utf-8'))
