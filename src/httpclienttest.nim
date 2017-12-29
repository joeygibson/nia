import asyncdispatch, httpclient

# nim c -r -d:ssl src/httpclienttest.nim

let client = newAsyncHttpClient()
let response = waitFor client.get("http://nim-lang.org")

echo(response.version)
echo(response.status)
echo(waitFor response.body)
