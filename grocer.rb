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
   name = coupon{:item]
   coupon_item_number = coupon[:num]
   cart_item = cart[coupon_name]


def apply_clearance(cart)
end

def checkout(cart, coupons)
end