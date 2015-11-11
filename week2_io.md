#IO
## Intro

Io is a dynamic, prototype based language created by Steve Dekorte in 2002

Some charactestics:
- Everything is an object
- Very small language
- Very small runtime
- Very strong metaprogramming
- It uses message passing
- String concurrency based on: coroutines, actors and futures

## Get to know the tooling
- Io

## Exercises

Let's use the Io repl

Io> method("This is a test" println)​​
Io> method("This is a test" println)​​ type
Io> test := method("This is a test" println)
Io> test
Io> test type

test *type* is **Block** because the method gets executed and we use *type* on the result.

Look at the output of each of these commands
Io> Car := Object clone
Io> Ferrari := Car clone
Io> ferrari := Car clone

The first two return a the name of the object that is declared. Not the third one. The first two indicate *type*. Not the third one.

Io> Ferrari slotNames
Io> ferrari slotNames

Check lack of type again.

slots are member variables and methods.

*slotNames* shows all the methods and properties

Io> ferrari2 := ferrari clone
Io> ferrari type
Io> ferrari2 type

Uppercase means "type". lowercase inherints type from the parent.

Io> Block slotNames

Io> Car makeNoise := method("Vroom, Vroom" println)
Io> Car makeNoise
Io> Ferrari makeNoise
Io> Ferrari slotNames
Io> Car slotNames

If an object doesn't have the slot it will invoke the parent's

Io> Ferrari proto
Io> Car proto
Io> Object proto

Io> Lobby

Io> OperatorTable
Order of operators.
Check last two paragraphs

Io> OperatorTable addOperator("xor", 11)
Io> true xor := method(bool, if(bool, false, true))
Io> false xor := method(bool, if(bool, true, false))

To implement an operator we need to implement the message wherever we want to use the operator. Check that the last parameter of method is the body. Any previous parameter are the arguments for the body.

Io> 5==5
Io> 5==5 xor 4==4
Io> 4==5 xor 4==4


Io> true xor 5
Io> 5 xor true

only false and nil are false.
