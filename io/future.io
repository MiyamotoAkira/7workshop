result := Object clone
result value := 0
todo := method (for (c, 0, 6000000, result value = c))
futureResult := futureSend(todo)

writeln ("Hello")
writeln ("still here")


result value println

writeln ("lets wait")
wait(5)

result value println

writeln (futureResult)