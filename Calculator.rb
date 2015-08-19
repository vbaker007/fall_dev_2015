ValidOperations = ['+', '-', '/', '*']

def get_number
  print "Please select a number:"
  @number1 = gets.to_i
end

def select_operation
    puts "Please select an operation (+ = addition, - = subtraction, multiplication = *, / = division):"
    op = gets.strip
    if ValidOperations.include? op.split('').first
      @operation = op
    else

      #TODO user re-enters
    end
end

def second_num 
  print "Please select an additional number:"
  @number2 = gets.to_i
end

def calculate
     case @operation
       when '+'
        value = @number1 + @number2
        when '-'
        value = @number1 - @number2
        when '*'
        value = @number1 * @number2
        when '/'
        value = @number1 / @number2
      end
    puts "You're answer is #{value}"

end

def run
  get_number
  select_operation
  second_num
  calculate
end

run

puts "Do you want to enter another calculation?"
