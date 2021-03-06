def pet_shop_name(shop)
  shop[:name]
end

def total_cash(shop)
 shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash_value)
  shop[:admin][:total_cash] += cash_value
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, delta_pets)
  shop[:admin][:pets_sold] += delta_pets
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(shop, pet)
  animals = shop[:pets]
  total = []
  for animal in animals
    if animal[:breed] == pet
      total.push(animal)
    end
  end
  return total
end

def find_pet_by_name(shop, pet_name)
  animals = shop[:pets]
  for animal in animals
    if animal[:name] == pet_name
      return animal
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  animals = shop[:pets]
  for animal in animals
    if animal[:name] == pet_name
      animals.delete(animal)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_out)
  customer[:cash] -= cash_out
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, new_pet)
  price = new_pet[:price]
  available_cash = customer[:cash]
    if price <= available_cash
      return true
    else
      return false
    end
end

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return "No such pet in stock"
  elsif customer_can_afford_pet(customer, pet) == true
    add_pet_to_customer(customer, pet)
    cash = pet[:price]
    remove_customer_cash(customer, cash)
    remove_pet_by_name(shop, pet[:name])
    shop[:admin][:pets_sold] += 1
    add_or_remove_cash(shop, cash)
  else
    return "Customer has insufficient funds"
  end
end
