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
new_cart = {}
cart.each do |product, info|
  new_cart[product] = info
  coupons.each do | coupon_hash|
    if food_item == coupon_hash[:item]
      if info_hash[:count] >= coupon_hash[:num]
        info_hash[:count] -= coupon_hash[num]
        if new_cart.include?(food_item+"W/COUPON")
          new_cart[food_item+"W/COUPON"][:count] += 1
        else 
          new_cart[food_item+"W/COUPON"] = {
            :price => coupon_hash[:cost],
            :clearance => info_hash[:clearance],
            :count => 1
          }
        end
      end
    end
  end
end
  new_cart
end


def apply_clearance(cart)
end

def checkout(cart, coupons)
end