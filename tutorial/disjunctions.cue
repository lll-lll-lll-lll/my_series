// 論理和もしくはsum types新しいタイプを定義する
// protocolがtcpかudp
#Conn: {
    address:  string
    port:     int
    protocol: "tcp" | "udp"
}

lossy: #Conn & {
    address:  "1.2.3.4"
    port:     8888
    protocol: "udp"
}