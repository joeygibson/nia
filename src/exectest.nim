import osproc

when defined(windows):
    let (ver, _) = execCmdEx("cmd /c ver")
else:
    let (ver, _) = execCmdEx("uname -sr")

echo("My OS is ", ver)