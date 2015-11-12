Builder := Object clone
Builder forward := method (
  write("<", call message name, ">")
  call message arguments foreach (
    arg,
	content := self doMessage(arg);
	if (content type == "Sequence", write(content)))
  writeln("</", call message name, ">"))

Builder ul (
		li ("Io"),
		li ("Lua"),
		li ("Javascript"))