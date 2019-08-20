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
  if cart.key?(coupon[:product]) && cart[coupon[:product]][:count] >= coupon[:num]
    apply = coupon[:product] + "W/COUPON"
    cart[coupon[:item]][:count] -= coupon[:num]
    if (cart.key(apply)==false)
      cart[apply] = {price:coupon[:count], clearance: cart[coupon[:item]][:clearance], count:1}
    else
      cart[apply][:count] += 1
    end
  end
end
cart
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
