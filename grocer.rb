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
    x = coupon[:items]
    if cart[x] && cart[x][:count] >= coupon[:num]
      if cart["#{x} W/COUPON"]
        cart["#{x} W/COUPON"][:count] += 1
      else
        cart["#{x} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{x} W/COUPON"][:clearance] = cart[x][:clearance]
      end
      cart[x][:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
end

def checkout(cart, coupons)
end