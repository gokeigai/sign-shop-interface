def size_calc(length, width)

  #set price $15 per square foot
  size_price = 15
  size_total = (length*width) * size_price

end

def color_calc(amount)

  #set color price in $
  color_price = amount <= 2 ? 10 :15
  color_total = amount * color_price

end

def tax_calc(size_color_total)

  tax = 0.15
  tax_total = (size_color_total) * tax

end


def determine_total (length, width, colors_amount)

  before_tax = size_calc(length, width) + color_calc(colors_amount)
  final_total = before_tax + tax_calc(before_tax)

end

def sign_shop_interface
  print "Length (ft): "
  l = gets.chomp.to_i

  print "Width (ft): "
  w = gets.chomp.to_i

  print "Number of colors: "
  color_int = gets.chomp.to_i

  puts determine_total(l, w, color_int)
end

<<<<<<< HEAD
sign_shop_interface
=======
sign_shop_interface 
>>>>>>> 47634e9b962e06621d0005748977cf9e7d143224
