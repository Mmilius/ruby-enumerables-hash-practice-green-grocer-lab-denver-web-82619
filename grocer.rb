def consolidate_cart(cart)
  new_cart = {}
  cart.each do |items|
    items.each do |product, info|
      new_cart[product] ||= info
      new_cart[product][:count]? new_cart[product][:count] += 1 :
      new_cart[product][:count] = 1
end
end
new_cart
end

def apply_coupons(cart, coupons) 
 coupons.each do |coupon|
   coupon.each do |a, value|
     x = coupon[:item]

if cart[n] && cart[n][:count] >= coupon[:num] if cart[“#{n} W/COUPON”] cart [“#{n} W/COUPON” ] [:count] += 1
else
cart[“#{n} W/COUPON”] = {:price => coupon[:cost]/coupon[:num], :clearance => cart[n][:clearance], :count => coupon[:num]} end

cart[n][:count] -= coupon[:num]
end
end
end
cart
end

  

def apply_clearance(cart)
end

def checkout(cart, coupons)
end