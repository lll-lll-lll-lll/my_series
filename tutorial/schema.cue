#Conn:  {
    address: string
    port: int
    protocol: string
} 

lossy: #Conn &{
    address: "example.com"
    port: 8000
    protocol: "udp"
} 

#Language: {
    tag: string
    name: =~"^\\p{Lu}"
} 

language: [...#Language]