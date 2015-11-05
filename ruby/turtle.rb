class Turtle
  def walk(&block)
    instance_eval(&block)
  end

  def up(number)
    puts "going up by #{number}"
  end

  def down(number)
    puts "going down by #{number}"
  end
end


t = Turtle.new
t.walk do
  up(8)
  3.times do
    down(2)
  end
end
