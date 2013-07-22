def add(arg1, arg2)
  arg1 + arg2
end

#------------------
def subtract(arg1, arg2)
  arg1 - arg2
end

#------------------
def sum(args)
  suma = 0
  args.each do | iItem |
    suma = suma + iItem
  end

  suma
end

#------------------
def multiply(arg1, arg2 = 0)
  if arg1.kind_of?(Array)
    multi = 1
    arg1.each do | iItem |
      multi = multi * iItem
    end

    return multi
  else

    return arg1 * arg2
  end
end

#------------------
def power(arg1, arg2)
  arg1**arg2
end

#------------------
def factorial(arg1)
  if arg1 == 0
    return 0
  end

  $i = 1
  $fac = 1
  while $i <= arg1  do
    $fac = $fac * $i
    $i +=1
  end

  $fac
end
