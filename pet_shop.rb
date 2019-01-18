



def pet_shop_name(shop) #object of class pet_shop, confirm name is...
  return shop[:name]
end

def total_cash(shop) #pass @pet_shop as an array via parameter shop
  return shop[:admin][:total_cash] # access total cash and return
end

def add_or_remove_cash(shop, value)
  shop[:admin][:total_cash] +=   value #use shop as pointer, follow to value,increment
  return shop[:admin][:total_cash]
end

# plain sailing
def pets_sold(shop)
  return shop[:admin][:pets_sold]
end
#plain sailing
def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] +=   amount
  return shop[:admin][:pets_sold]
end
#plain sailing
def stock_count(shop)
  shop[:pets].count
end

#Right, 3 hours burned on this one bloody question. Insanely tricky.
#accessing a hash within an array within a hash
#for loops only deal with arrays - keys provide you the hash access.
#no implicit conversion of symbol into integer - you're feeding an array the wrong info - access via key NOT for loop.
#no (for loop) method each for hash -  if you get this you're trying to cycle through a hash using a for loop
#- it won't work, access via key only. if there's an array within then use a for loop.

def pets_by_breed(shop_hash,pet_breed_string)#feed it the pet shop hash and string to be matched
  breed_total = [] # create an empty array
  for array_element in shop_hash[:pets] # shop_hash[:pets] jumps into our array within pet shop hash
    if pet_breed_string == array_element[:breed]#access each array element and look for match in element[:key]
      breed_total << array_element[:name] #pass our array the name of the pet.
    end
  end
  return breed_total
end


# Use the same method of burrowing above but how to return a nil?
  def find_pet_by_name(shop_hash, pet_name_string)

#Again a nightmare, remember that when you use return that's you - function over - don't pass go.
#originally I tried to use a conditional, waste of time
   for array in shop_hash[:pets] #for every element(pet) in pets array
     if pet_name_string == array[:name] #if input string matches :name key/value
       return array # Give back the whole pet hash - THIS WILL BOOT YOU OUT OF FUNCTION!
     end
   end #if you find no matches you'll exit iterator at this point
   return nil #keep the return here, post-iterator else it'll exit too soon.
  end


  def remove_pet_by_name(shop_hash, pet_name_string)
    for array in shop_hash[:pets] #for every element(pet) in pets array
      if pet_name_string == array[:name] #if input string matches :name key/value
        shop_hash[:pets].delete(array) #hash>pets is the array, array methods can be called.
      end
    end
  end


  def add_pet_to_stock

  end

  # def customer_cash

  # end
  #
  # def remove_customer_cash

  # end
  #
  # def customer_pet_count

  # end
  #
  # def add_pet_to_customer

  # end
