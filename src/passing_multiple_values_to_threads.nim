type
    ThreadData = tuple[param1: string, param2: int]

var data = "Hello, World!"

proc showData(data: ThreadData) {.thread.} =
    echo(data.param1, data.param2)

var thread: Thread[ThreadData]
createThread[ThreadData](thread, showData, (param1: data, param2: 23))

joinThread(thread)