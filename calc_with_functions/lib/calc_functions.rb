def zero(calc=nil)
  return 0 if calc.nil?
  calc.call(0)
end

def one(calc=nil)
  return 1 if calc.nil?
  calc.call(1)
end

def two(calc=nil)
  return 2 if calc.nil?
  calc.call(2)
end

def three(calc=nil)
  return 3 if calc.nil?
  calc.call(3)
end

def four(calc=nil)
  return 4 if calc.nil?
  calc.call(4)
end

def five(calc=nil)
  return 5 if calc.nil?
  calc.call(5)
end

def six(calc=nil)
  return 6 if calc.nil?
  calc.call(6)
end

def seven(calc=nil)
  return 7 if calc.nil?
  calc.call(7)
end

def eight(calc=nil)
  return 8 if calc.nil?
  calc.call(8)
end

def nine(calc=nil)
  return 9 if calc.nil?
  calc.call(9)
end

def plus(num)
  Proc.new {|num2| num2 + num}
end

def minus(num)
  Proc.new {|num2| num2 - num}
end

def times(num)
  Proc.new {|num2| num2 * num}
end

def divided_by(num)
  Proc.new {|num2| num2 / num}
end
