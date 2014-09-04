def calculate(i, a, b)
  if i == "+"
    add(a, b)
  elsif i == "-"
    subtract(a, b)
  elsif i == "/"
    divide(a, b)
  elsif i == "*"
    multiply(a, b)
  elsif i == "**"
    exponent(a, b)
  elsif i == "find squareroot"
    squareroot(a)
  else
    nil
  end
end

def add(a, b)
  "#{a} + #{b} = #{a + b}"
end

def subtract(a, b)
  "#{a} - #{b} #{a - b}"
end

def divide(a, b)
  "#{a} / #{b} = #{a/b}"
end

def multiply(a, b)
  "#{a} * #{b} = #{a * b}"
end

def exponent(a, b)
  "#{a} ** #{b} = #{a ** b}"
end

def squareroot(a)
  "√#{a} = #{Math.sqrt(a)}"
end

def format_input(input)
  operations = ["+", "-", "*", "/", "**", "^(1/2)"]
  if operations.include?(input)
    return input
  end
  hash = {"addition" => "+", "subtraction" => "-", "multiplication" => "*", "division" => "/", "find exponent" => "**", "find squareroot" => "find squareroot"}
  input = hash[input]
end

puts "Hello there!"
puts "What kind of maths would you like to do?"
input = gets.chomp
input = format_input(input)
answer = "The answer is"

puts "What is the first number?"
num1 = gets.chomp
  if num1 == num1.to_i
    if input != "find squareroot"
      puts "What is the second number?"
      num2 = gets.chomp.to_i
    end
    answer = calculate(input, num1, num2)
  else
    abort
  end

puts answer
