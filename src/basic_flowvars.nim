import threadpool, os

let lineFlowVar = spawn stdin.readLine()

while not lineFlowVar.isReady:
    echo("No input received")
    echo("Sleeping 3 seconds...")
    sleep(3000)

echo("Received: ", ^lineFlowVar)
