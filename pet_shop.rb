def pet_shop_name(shop)
  shop[:name]
end

def total_cash(shop)
 shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash_value)
  shop[:admin][:total_cash] += cash_value
end