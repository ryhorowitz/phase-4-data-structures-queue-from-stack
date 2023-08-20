require_relative './stack'

# your code here
class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(val)
    @s1.push(val)
  end

  def remove
    # pop and push every element inthe empty stack
    @s2.push(@s1.pop) until @s1.empty?
    # s2 is in order now
    result = @s2.pop
    @s1.push(@s2.pop) until @s2.empty?
    result
  end

  def peek
    @s2.push(@s1.pop) until @s1.empty?
    # s2 is in order now
    result = @s2.peek
    @s1.push(@s2.pop) until @s2.empty?
    result
  end
end
