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
  if cart.keys.include?(coupon[:item])
    if cart[coupon[:item]][:count] >= coupon[:num]
      coupon_applied = "#{[coupon[:item]} W/Coupon"
      if cart[coupon_applied]
        cart[coupon_applied][:count] += coupon[:num]
        cart[coupon[:item]][:count] -= coupon[:num]
      else
        cart[coupon_applied] = {}
        cart[coupon_applied][:price] = (coupon[:cost]
        


def apply_clearance(cart)
end

def checkout(cart, coupons)
end