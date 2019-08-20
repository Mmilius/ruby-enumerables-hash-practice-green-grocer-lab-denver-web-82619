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
    coupon.each do |attribute, value|
      name = coupon[:item]
      if cart[name] && cart[name][:count] >= coupon[:num]
        if cart["#{name} W/COUPON"] cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:price => coupon[:cost]/coupon[:num], :clerance => cart[name][:clerance], :clerance => cart[name][:clerance], :count => coupon[:num]}
end
cart[name][:count] -= coupon[:num]
end
end
cart
end

 

def apply_clearance(cart)
end

def checkout(cart, coupons)
end