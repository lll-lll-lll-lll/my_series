// *をつけることでreplicasが定義されていないときはデフォルトで1を返す
replicas: uint | *1

// デフォルト定義が曖昧
protocol: *"tcp" | "udp"
protocol: *"udp" | "tcp"