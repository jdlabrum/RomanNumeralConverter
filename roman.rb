#!/usr/local/bin/ruby -w
def to_intr
  x = self
	l = x.length
  result = ""
    a = 0
    b = 0
    c = 0
    while a < l
      temp = x[a]
      c=a+1
      d = 0
      if temp == "I"
        while c < l
          if a<l-1
            if x[c] == "I"
              if d<1
                d=1
              end
              c+=1
            end
            if x[c] == "V"
              if d<5
                d=5
              end
              c+=1
            end
            if x[c] == "X"
              if d<10
                d=10
              end
              c+=1
            end
          end
          if d>1
            b=b-2
          end
          b+=1
        end
      end
      if temp == "V"
        b+=5
      end
      if temp == "X"
        b+=10
      end
      if temp == "L"
        b+=50
      end
      if temp == "C"
        b+=100
      end
      if temp == "D"
        b+=500
      end
      if temp == "M"
        b+=1000
      end
      a += 1
    end
      result = b
      puts b
end



class Integer
 
  def to_roman
    result = ""
    number = self
    roman_mapping.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_mapping[divisor] * quotient
      number = modulus
    end
    puts result
  end
 
  private
 
  def roman_mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
 
end 

def *(x,y)
	puts to_i(x)*to_i(y)
end

r = "XVII"
print r.to_intr
print 123.to_roman



