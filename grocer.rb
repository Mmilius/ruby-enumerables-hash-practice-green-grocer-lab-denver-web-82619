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
    if cart.key?(coupon:items) && cart[coupon[:items]][:count] >= coupon[:num]
      group = coupon[:items] + "W/COUPON"
      cart[coupon[:items]][:count] -= coupon[:num]
      if (cart.key?(group)==false)
        cart[group] = {price: coupon[:cost, clearance: cart[coupon[:items]][:clearance], count: 1}
      else
        cart[group][:count] += 1
      end
    end
  end
  cart
end

 

def apply_clearance(cart)
end

def checkout(cart, coupons)
end