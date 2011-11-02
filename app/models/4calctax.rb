# To change this template, choose Tools | Templates
# and open the template in the editor.
taxrate = 0.175
print "Enter price (ex tax): " 
s = gets  #這個s 是一個方法
subtotal = s.to_f
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"
