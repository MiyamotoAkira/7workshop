Builder := Object clone
Builder forward := method (
  name := call message name
  name = if(name == "mylist", "ul", name)
  write("<", name, ">")
  call message arguments foreach (
    arg,
	content := self doMessage(arg);
	if (content type == "Sequence", write(content)))
  writeln("</", name, ">"))

Builder mylist (
		li ("Io"),
		li ("Lua"),
		li ("Javascript"))