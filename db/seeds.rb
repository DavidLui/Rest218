# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 Pin.create(foodtype: 'lunchspecials', name: 'Lunch Special (11:00am-3:00pm)')
 Pin.create(foodtype: 'chefrecommends', name: 'Chef\'s Recommendations')
 Pin.create(foodtype: 'appetizers', name: 'Appetizers')
 Pin.create(foodtype: 'soups', name: 'Soups')
 Pin.create(foodtype: 'congeeincasseroles', name: 'Congee In Casserole')
 Pin.create(foodtype: 'lomeins', name: 'Lo Mein')
 Pin.create(foodtype: 'chowfuns', name: 'Chow Fun, Mai Fun, Chow Mein and Fried Rice')
 Pin.create(foodtype: 'porkbeefs', name: 'Pork and Beef')
 Pin.create(foodtype: 'chickenducks', name: 'Chicken and Duck')
 Pin.create(foodtype: 'seafoods', name: 'Seafood')
 Pin.create(foodtype: 'shells', name: 'Shell')
 Pin.create(foodtype: 'porkbeefs', name: 'Pork and Beef')
 Pin.create(foodtype: 'vegetables', name: 'Vegetable')
 Pin.create(foodtype: 'riceincasseroles', name: 'Rice In Casserole')
 Pin.create(foodtype: 'casseroledishes', name: 'Casserole Dish')
 Pin.create(foodtype: 'sizzlingplates', name: 'Sizzling Plates')
 Pin.create(foodtype: 'ricedishes', name: 'Rice Dishes')

# user = User.find_or_initialize_by(email: 'bob@example.com')
# user.name = 'Bob'
# user.password = 'secret'
# user.role = 'manager'
# user.save!
 
  Appetizer.create(name: 'Vegetable Spring Rolls(3)',price: '5.00')
 # app = Appetizer.find_or_initialize_by(name: 'Vegetable Spring Rolls(3)')
 # app.price = '5.00'
 # app.save!
 Appetizer.create(name: 'Dumplings (Steamed or Fried)(5)',price: '6.00')
 # app2 = Appetizer.find_or_initialize_by(name: 'Dumplings (Steamed or Fried)(5)')
 # app2.price = '5.00'
 # app2.save!
 Soup.create(name: 'Subgum with Melon Soup',price: '8.45')
 # soup = Soup.find_or_initialize_by(name: 'Subgum with Melon Soup')
 # soup.price = '8.45'
 # soup.save!
 Soup.create(name: 'Minced Chicken Corn Soup',price: '7.95')
 Soup.create(name: 'Hot and Sour Soup',price: '7.95')
 Soup.create(name: 'West Lake Minced Beef Soup',price: '8.95')
 Soup.create(name: 'Water Crest with Minced And Bean Curd Soup',price: '7.95')
 Soup.create(name: 'Crab Meat and Fish Belly Soup',price: '10.50')
 Soup.create(name: 'Clam Soup',price: '9.95')
 Soup.create(name: 'Seafood Combination and Fish Belly Soup',price: '10.50')
 Soup.create(name: 'Egg Drop Soup (For 1)',price: '2.75')

 Congeeincasserole.create(name: 'Slice Fish Congee',price: '6.75')
 Congeeincasserole.create(name: 'Fish Head Congee',price: '6.75')
 Congeeincasserole.create(name: 'Frog Congee',price: '8.95')
 Congeeincasserole.create(name: 'Pork and Preserved EGg Congee',price: '5.00')
 Congeeincasserole.create(name: 'Pork Blood Congee',price: '5.00')
 Congeeincasserole.create(name: 'Seafood Congee',price: '6.75')

 Lomein.create(name: 'Roast Pork Lo Mein',price: '9.95')
 Lomein.create(name: 'Shrimp Lo Mein',price: '9.95')
 Lomein.create(name: 'Chicken Lo Mein',price: '9.95')
 Lomein.create(name: 'Beef Lo Mein',price: '9.95')
 Lomein.create(name: 'Subgum Lo Mein',price: '9.95')
 Lomein.create(name: 'Seafood Lo Mein',price: '12.95')
 Lomein.create(name: 'Braised E-Fu Noodle with Black Mushroom Lo Mein',price: '10.50')
 Lomein.create(name: 'Braised E-Fu Noodle with Shredded Lo Mein',price: '11.75')
 Lomein.create(name: 'Braised E-Fu Noodle with Crab Meat Lo Mein',price: '14.95')
 Lomein.create(name: 'Braised E-Fu Noodle with Seafood Lo Mein',price: '14.95')

 Chowfun.create(name: 'Shrimp and Lobster Sauce with Noodles',price: '8.95')
 Chowfun.create(name: 'Beef Dried Chow Fun',price: '8.95')
 Chowfun.create(name: 'Beef Chow Fun',price: '9.95')
 Chowfun.create(name: 'Singapore Mai Fun',price: '8.95')
 Chowfun.create(name: 'Ha Moo Mai Fun',price: '8.95')
 Chowfun.create(name: 'Buddhist Delight Chow Mein',price: '9.95')
 Chowfun.create(name: 'Shredded Pork Chow MEin',price: '9.95')
 Chowfun.create(name: 'Beef Chow Mein',price: '9.95')
 Chowfun.create(name: 'Shredded Pork with Picked Cabbage Mai Fun',price: '9.95')
 Chowfun.create(name: 'Shredded Chicken Chow Mein',price: '9.95')
 Chowfun.create(name: 'Soy Sauce Chow Mein',price: '9.95')
 Chowfun.create(name: 'Fillet Fish Chow Mein',price: '13.95')
 Chowfun.create(name: 'Seafood Chow Mein',price: '13.95')
 Chowfun.create(name: 'Beef with Chinese Mushroom Chow Fun',price: '12.95')
 Chowfun.create(name: 'Tai Pang Mai Fun',price: '12.95')
 Chowfun.create(name: 'Soy Sauce with Dried Squid Chow Mein',price: '13.95')
 Chowfun.create(name: 'Young Chow Fried Rice',price: '8.95')
 Chowfun.create(name: 'Roast Pork Fried Rice',price: '7.75')
 Chowfun.create(name: 'Shrimp Fried Rice',price: '8.95')
 Chowfun.create(name: 'Mixed Vegetable Fried Rice',price: '7.75')
 Chowfun.create(name: 'Fook Ken Fried Rice',price: '11.95')
 Chowfun.create(name: 'Salted Fish and Minced Chicken Fried Rice',price: '12.75')
 Chowfun.create(name: 'Crab Meat and Dried Scallop Fried Rice',price: '14.95')

 Porkbeef.create(name: 'Pork Chop with Salt and Pepper',price: '11.50')
 Porkbeef.create(name: 'Pork Chop Peking Style',price: '11.50')
 Porkbeef.create(name: 'Sweet and Sour Pork',price: '11.25')
 Porkbeef.create(name: 'Slice Pork with Ginger and Scallion',price: '11.25')
 Porkbeef.create(name: 'Steamed Pork Cake with Salt Fish',price: '11.25')
 Porkbeef.create(name: 'Sauteed Intestines',price: '11.75')
 Porkbeef.create(name: 'Roast Pork with Green Pepper',price: '11.25')
 Porkbeef.create(name: 'Orange Flavor with Beef',price: '13.25')
 Porkbeef.create(name: 'Sauteed Filet Beef with Chinese Broccoli',price: '16.25')
 Porkbeef.create(name: 'Filet Steak Hong Kong Style',price: '16.25')
 Porkbeef.create(name: 'Sauteed Shredded Beef',price: '12.25')
 Porkbeef.create(name: 'Beef with Broccoli',price: '12.5')
 Porkbeef.create(name: 'Fried Steak Chunk',price: '21.25')
 Porkbeef.create(name: 'Sauteed Steak Chunk',price: '21.25')
 Porkbeef.create(name: 'Veal Chop with Salted Black Pepper',price: '13.25')
 Porkbeef.create(name: 'Beef with Oyster Sauce',price: '12.25')

 Chickenduck.create(name: 'Orange Flavor Chicken',price: '13.25')
 Chickenduck.create(name: 'General Tso\'s Chicken',price: '13.25')
 Chickenduck.create(name: 'Sesame Chicken',price: '13.25')
 Chickenduck.create(name: 'Steamed Chicken with Chinese Mushroom',price: '12.25')
 Chickenduck.create(name: 'Diced Chicken with Cashew Nuts',price: '11.75')
 Chickenduck.create(name: 'Chicken with Broccoli',price: '11.75')
 Chickenduck.create(name: 'Chicken with Celery',price: '11.75')
 Chickenduck.create(name: 'Diced Chicken with Hot Pepper Sauce',price: '11.75')
 Chickenduck.create(name: 'Curry Chicken',price: '11.75')
 Chickenduck.create(name: 'Pineapple Chicken',price: '11.75')
 Chickenduck.create(name: 'Chicken with Bitter Melon',price: '11.75')
 Chickenduck.create(name: 'Chicken with Mango',price: '12.25')
 Chickenduck.create(name: 'Braised Duck with Vegeatble',price: '17.25')
 Chickenduck.create(name: 'Duck with Oyster Sauce',price: '12.25')
 Chickenduck.create(name: 'Peking Duck (Half)',price: '17.95')
 Chickenduck.create(name: 'Peking Duck (Whole)',price: '32.00')

 Seafood.create(name: 'Pan Fried Flounder',price: 'S.P.')
 Seafood.create(name: 'Flounder Ball with Vegetable',price: 'S.P.')
 Seafood.create(name: 'Steamed Buffalo Carp Fish with Vegetable',price: '14.95')
 Seafood.create(name: 'Steamed Live Fish',price: 'S.P.')
 Seafood.create(name: 'Squid with Salt and Pepper',price: '12.25')
 Seafood.create(name: 'Shrimp and Walnuts with Broccoli',price: '20.25')
 Seafood.create(name: 'Sauteed Shrimp Ball with Spicy Sauce',price: '20.25')
 Seafood.create(name: 'Seafood with Salt and Pepper',price: '18.25')
 Seafood.create(name: 'Scallop with Black Pepper Sauce',price: '16.25')
 Seafood.create(name: 'Seafood with Vegetable',price: '18.25')
 Seafood.create(name: 'Eel with Black Bean Sauce',price: 'S.P.')
 Seafood.create(name: 'Shrimp with Lobster Sauce',price: '18.25')
 Seafood.create(name: 'Sauteed Shrimp in Szechuan Style',price: '14.25')
 Seafood.create(name: 'Sauteed Shrimp with Hot and Spicy Sauce',price: '13.25')
 Seafood.create(name: 'Sauteed Shrimp with Cashew Nuts',price: '13.25')
 Seafood.create(name: 'Sauteed Shrimp with Egg',price: '13.25')
 Seafood.create(name: 'Steamed Any Kind of Seafood',price: 'S.P.')
