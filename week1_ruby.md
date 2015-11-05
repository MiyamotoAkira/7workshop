# Ruby
## Intro

Ruby is a dynamic, interpreted language create by Yukihiro Matsumoto ..., most commonly know as Matz, in 1995.

Some characteristics of Ruby:
- Everything is an object. Everything. A method is an object. A free function is an object.
- Duck typing.
- Ruby is know for being slow.
- Ruby raised to prominence with two different events: The PickAxe book by Dave Hunt (coauthor of The Pragmatic Programmer) and the creation of the Ruby on Rails framework by DHH
- Ruby is fun for a programmer. Doesn't get in the way of creating a solution.
- Ruby allows very fast development
- Ruby metaprogramming is powerful. Allows for easily creating DSL.

## Get to know the tooling
- ruby
ruby basic.rb
- irb
4+4
def hello
	puts "hello"
end
	
Load files on irb: irb -r ./chess.rb

## Exercises

- Block example

  I have to talk about:
  - Keys
  - Blocks -> Lambdas
  - All code is executable, including classes.


  Get all the status of the squares
  Change a row to be occupied

- Open classes example

	On a different file. Traverse only black squares. If the method name is different, is an extension. If the method name is the same is a monkey patching. 

- Modules
	A board has some properties that are independent of the game played, like being able to check all squares, all squares in a rank, all squares in a file, and diagonals.
	Transform board into module.
	Create Othello board.
	Add logic to flip between two different points in the same rank, same file, same diagonal

- DSL
  turtle.rb

- For homes
  8 queens problem
  && Othello (just two humans playing)
  using the same board 
