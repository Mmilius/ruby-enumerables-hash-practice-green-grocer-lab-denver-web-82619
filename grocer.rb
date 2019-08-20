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
    if product == coupon_hash[:item]
      if info[:count] >= coupon_hash[:num]
        info[:count] -= coupon_hash[:num]
        if new_cart.include?(product +"W/COUPON")
          new_cart[product+" W/COUPON"][:count] += 1
        else 
          new_cart[product+" W/COUPON"] = {
            :price => coupon_hash[:cost],
            :clearance => info[:clearance],
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