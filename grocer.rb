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
  
end
 

def apply_clearance(cart)
  cart.each do |product, info|
    if info[:clearance] == true
      info[:price] = (info[:price] * 0.8).round(2)
end
end
cart
end

def checkout(cart, coupons)
  total = 0
  new_cart = consolidate_cart(cart)
  coupon_cart = apply_coupons(new_cart, coupons)
  clearance_cart = apply_clearance(coupon_cart)
  
  clearance_cart.each do |product, info|
    total += (info[:price] * info[:count])
  end
  total = (total * 0.9) if total > 100 total
end