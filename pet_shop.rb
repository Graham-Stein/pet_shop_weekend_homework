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
