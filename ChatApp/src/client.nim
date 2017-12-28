import os, threadpool

echo("Chat application started...")

if paramCount() == 0:
    quit("Please specify the server address")

let serverAddr = paramStr(1)
echo("Connecting to ", serverAddr)

while true:
    let message = spawn stdin.readLine()
    # Adding `spawn` makes it run in another thread
    # Since `message` won't be immediately available, adding `^` to `message` is required
    echo("Sending ", ^message, " to ", serverAddr)
