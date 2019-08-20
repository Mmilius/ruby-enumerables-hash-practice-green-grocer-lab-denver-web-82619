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
      coupon_applied = "#{coupon[:item]} W/COUPON"
      if cart[coupon_applied]
        cart[coupon_applied][:count] += coupon[:num]
        cart[coupon[:item]][:count] -= coupon[:num]
      else
        cart[coupon_applied] = {}
        cart[coupon_applied][:price] = (coupon[:cost]/coupon[:num])
        cart[coupon_applied][:clearance] = cart[coupon[:item]][:clearance]
        cart[coupon_applied][:count] = coupon[:num]
        cart[coupon[:item]][:count] -= coupon[:num]
      end
    end
  end
end
cart
end
    
def apply_clearance(cart)
  cart.each do |product, info|
    if info[:clearance] == true
      info[:price] = (info[:price]*0.8).round(2)
end
end
cart
end

def checkout(cart, coupons)
end