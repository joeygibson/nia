var data = "Hello, World!"

# proc showData() {.thread.} =
#     echo(data)

# GC-safe version
proc showData(param: string) {.thread.} =
    echo(param)

var thread: Thread[string]
createThread[string](thread, showData, data)

joinThread(thread)
