mongoose = require 'mongoose'
RestaurantSchema = require('./restaurantSchema').RestaurantSchema

RestaurantSchema.methods.getMenu = ->
  console.log 'Getting menu'
  @menu

exports.Restaurant = mongoose.model 'Restaurant', RestaurantSchema

#  Restaurant = mongoose.model('Restaurant')
#  data = new Restaurant
#    name: "China Fun"
#    address: "9020 Albemarle Rd"
#    city: 'Charlotte'
#    state: 'NC'
#    zip: 28227
#    telephone: [
#      "(704) 531-3338",
#      "(704) 260-0088"
#    ]
#    menu: [
#      name: "Appetizers"
#      description: "Include: egg roll, crispy chicken wings, crab rangoon, fantail shrimp, cho cho chicken, fried wonton"
#      items: [
#        name: "Egg Rolls (2 pcs)"
#        price: 1.90
#      ,
#        name: "Spring Rolls (2 pcs)"
#        price: 2.10
#      ,
#        name: "Crab Rangoon (6 pcs)"
#        price: 3.75
#      ,
#        name: "Fried Wonton (8 pcs)"
#        price: 2.95
#      ,
#        name: "Doughnut (12 pcs)"
#        price: 2.25
#      ,
#        name: "Fantail Shrimp (5 pcs)"
#        price: 4.50
#      ,
#        name: "2 Pcs Cho Cho Chicken (4 pcs)"
#        price: 3.65
#        description: "chicken on the stick"
#      ,
#        name: "Cho Cho Beef"
#        price: 4.25
#        description: "4 pcs beef on the stick"
#      ,
#        name: "Steamed or Fried Dumplings (6 pcs)"
#        price: 3.95
#      ,
#        name: "Honey Garlic Wings (6 pcs)"
#        price: 4.25
#      ,
#        name: "Crispy Chicken Wings (6 pcs)"
#        price: 3.25
#      ,
#        name: "Pu Pu Platter (For 2)"
#        price: 7.95
#      ]
#    ,
#      name: "Soups"
#      items: [
#        name: "Egg Drop Soup"
#        price: 1.15
#      ,
#        name: "Hot and Sour Soup"
#        price: 1.50
#      ,
#        name: "Wonton Soup"
#        price: 1.50
#      ,
#        name: "Seafood Delight Soup (For 2)"
#        price: 4.25
#      ,
#        name: "Three Flavor Soup (For 2)"
#        price: 3.95
#      ,
#        name: "Dragon and Phoenix Soup (For 2)"
#        price: 3.95
#      ]
#    ,
#      name: "Chicken"
#      items: [
#        name: "Sweet and Sour Chicken"
#        price: 6.75
#      ,
#        name: "Chicken Chow Mein"
#        price: 6.75
#      ,
#        name: "Cashew Chicken"
#        price: 6.75
#      ,
#        name: "Chicken with Snow Peas"
#        price: 6.75
#      ,
#        name: "Moo Goo Gai Pan"
#        price: 6.75
#      ,
#        name: "Chicken with Vegetables"
#        price: 6.75
#      ,
#        name: "Chicken with Broccoli"
#        price: 6.75
#      ,
#        name: "Spring Field Cashew Chicken"
#        price: 6.75
#      ,
#        name: "Chicken with Mushroom"
#        price: 6.75
#      ,
#        name: "Garlic Chicken"
#        price: 6.75
#      ,
#        name: "Kung Pao Chicken"
#        price: 6.75
#      ,
#        name: "Yu Hsiang Chicken"
#        price: 6.75
#      ,
#        name: "Empress Chicken"
#        price: 6.75
#      ,
#        name: "Hunan Chicken"
#        price: 6.75
#      ,
#        name: "Curry Chicken"
#        price: 6.75
#      ,
#        name: "Moo Shu Chicken with 4 Pancakes"
#        price: 6.95
#      ]
#    ,
#      name: "Pork"
#      items: [
#        name: "Sweet and Sour Pork"
#        price: 6.55
#      ,
#        name: "Pork Chow Mein"
#        price: 6.55
#      ,
#        name: "Kung Pao Pork"
#        price: 6.55
#      ,
#        name: "Hunan Pork"
#        price: 6.55
#      ,
#        name: "Yu Hsiang Pork"
#        price: 6.55
#      ,
#        name: "Twice Cooked Pork"
#        price: 6.55
#      ,
#        name: "Moo Shu Pork with 4 Pancakes"
#        price: 6.75
#      ]
#    ,
#      name: "Beef"
#      items: [
#        name: "Beef Chow Mein"
#        price: 7.55
#      ,
#        name: "Beef with Broccoli"
#        price: 7.55
#      ,
#        name: "Mongolian Beef"
#        price: 7.55
#      ,
#        name: "Beef with Vegetables"
#        price: 7.55
#      ,
#        name: "Beef with Snow Peas"
#        price: 7.55
#      ,
#        name: "Beef with Green Pepper"
#        price: 7.55
#      ,
#        name: "Beef with Oyster Sauce"
#        price: 7.55
#      ,
#        name: "Kung Pao Beef"
#        price: 7.55
#      ,
#        name: "Hunan Beef"
#        price: 7.55
#      ,
#        name: "Yu Hsiang Beef"
#        price: 7.55
#      ,
#        name: "Moo Shu Beef with 4 Pancakes"
#        price: 7.95
#      ]
#    ,
#      name: "Shrimp"
#      items: [
#        name: "Sweet and Sour Shrimp"
#        price: 7.95
#      ,
#        name: "Shrimp Chow Mein"
#        price: 7.95
#      ,
#        name: "Shrimp wtih Snow Peas"
#        price: 7.95
#      ,
#        name: "Cashew Shrimp"
#        price: 7.95
#      ,
#        name: "Shrimp with Brocooli"
#        price: 7.95
#      ,
#        name: "Shrimp with Vegetables"
#        price: 7.95
#      ,
#        name: "Shrimp with Lobster Sauce"
#        price: 7.95
#      ,
#        name: "Yu Hsiang Shrimp"
#        price: 7.95
#      ,
#        name: "Empress Shrimp"
#        price: 7.95
#      ,
#        name: "Kung Pao Shrimp"
#        price: 7.95
#      ,
#        name: "Hunan Shrimp"
#        price: 7.95
#      ,
#        name: "Moo Shu Shrimp with 4 Pancakes"
#        price: 7.95
#      ]
#    ,
#      name: "Vegetable"
#      items: [
#        name: "Vegetable Delight"
#        price: 6.25
#      ,
#        name: "Yu Hsiang Broccoli"
#        price: 6.25
#      ,
#        name: "Mo Po Tofu"
#        price: 6.25
#      ,
#        name: "Bean Curd Family Style"
#        price: 6.25
#      ,
#        name: "Snow Pea Pods"
#        price: 6.25
#      ]
#    ,
#      name: "Egg Foo Young"
#      items: [
#        name: "Vegetable Egg Foo Young"
#        price: 7.25
#      ,
#        name: "Chicken Egg Foo Young"
#        price: 7.25
#      ,
#        name: "Pork Egg Foo Young"
#        price: 7.25
#      ,
#        name: "Beef Egg Foo Young"
#        price: 7.50
#      ,
#        name: "Shrimp Egg Foo Young"
#        price: 7.95
#      ,
#        name: "Combination Egg Foo Young"
#        price: 7.95
#      ]
#    ,
#      name: "Fried Rice"
#      items: [
#        name: "Vegetable Fried Rice"
#        price: 6.25
#      ,
#        name: "Chicken Fried Rice"
#        price: 6.25
#      ,
#        name: "Pork Fried Rice"
#        price: 6.25
#      ,
#        name: "Beef Fried Rice"
#        price: 6.55
#      ,
#        name: "Shrimp Fried Rice"
#        price: 6.55
#      ,
#        name: "Combination Fried Rice"
#        price: 6.55
#      ]
#    ,
#      name: "Lo Mein"
#      items: [
#        name: "Vegetable Lo Mein"
#        price: 6.25
#      ,
#        name: "Chicken Lo Mein"
#        price: 6.25
#      ,
#        name: "Pork Lo Mein"
#        price: 6.25
#      ,
#        name: "Beef Lo Mein"
#        price: 6.55
#      ,
#        name: "Shrimp Lo Mein"
#        price: 6.55
#      ,
#        name: "Combination Lo Mein"
#        price: 6.55
#      ]
#    ,
#      name: "Combination Plates"
#      description: "Come with egg roll, crab rangoon and rice"
#      items: [
#        name: "Chicken or Pork Chow Mein"
#        price: 5.95
#      ,
#        name: "Shrimp or Beef Chow Mein"
#        price: 6.95
#      ,
#        name: "Sweet and Sour Chicken"
#        price: 5.95
#      ,
#        name: "Moo Goo Gai Pan"
#        price: 5.95
#      ,
#        name: "Chicken with Broccoli"
#        price: 5.95
#      ,
#        name: "Cashew Chicken"
#        price: 5.95
#      ,
#        name: "Yu Hsiang Chicken"
#        price: 5.95
#      ,
#        name: "Chicken with Vegetables"
#        price: 5.95
#      ,
#        name: "Vegetable Delight"
#        price: 5.95
#      ,
#        name: "Sweet and Sour Pork"
#        price: 5.95
#      ,
#        name: "Beef with Broccoli"
#        price: 6.55
#      ,
#        name: "Beef with Vegetable"
#        price: 6.55
#      ,
#        name: "Pepper Steak"
#        price: 6.55
#      ,
#        name: "Hunan Beef"
#        price: 6.55
#      ,
#        name: "Sweet and Sour Shrimp"
#        price: 6.95
#      ,
#        name: "Shrimp with Vegetable"
#        price: 6.95
#      ,
#        name: "Kung Pao Triple Delight"
#        price: 7.55
#      ,
#        name: "General Tso's Chicken"
#        price: 6.95
#      ,
#        name: "Sesame Chicken"
#        price: 6.95
#      ,
#        name: "Orange Chicken"
#        price: 6.95
#      ]
#    ,
#      name: "House of Specialties"
#      description: "Served with rice"
#      items: [
#        name: "Sweet and Sour Triple Delight"
#        price: 7.95
#        description: "Fried chicken pork and shrimp"
#      ,
#        name: "Orange Beef"
#        price: 9.50
#        description: "Chunks of tender steak sauteed with orange flavor sauce"
#      ,
#        name: "Sesame Beef"
#        price: 9.50
#        description: "Sliced beef sauteed with sesame seeds in brown sauce"
#      ,
#        name: "Orange Two Delight"
#        price: 9.50
#        description: "Beef and chicken with our special brown sauce"
#      ,
#        name: "Orange Chicken"
#        price: 7.95
#        description: "Chicken sauteed with orange flavor sauce"
#      ,
#        name: "General Tso's Chicken"
#        price: 7.95
#        description: "Chunks of chicken sauteed with red pepper, garlic and ginger"
#      ,
#        name: "Sesame Chicken"
#        price: 7.95
#        description: "Chunks of chicken with sesame seeds in brown sauce"
#      ,
#        name: "Happy Family"
#        price: 9.50
#        description: "Shrimp scallops beef chicken, crab meat, with mixed vegetables in delicious brown sauce"
#      ,
#        name: "Seafood Combination"
#        price: 9.50
#        description: "Combination of seafood sauteed with an assortment of fresh chinese, vegetables"
#      ,
#        name: "Scallop in Garlic Sauce"
#        price: 9.50
#        description: "Fresh scallops sauteed with water chestnuts mush rooms and vegetables in garlic sauce"
#      ,
#        name: "Chicken and Shrimp Hunan Style"
#        price: 8.95
#        description: "Chicken and shrimp sauteed with hunan hot sauce"
#      ,
#        name: "Beef with Scallops"
#        price: 9.50
#        description: "Beef and scallops with vegetables in brown sauce"
#      ,
#        name: "Shrimp Szechuan Style"
#        price: 8.75
#        description: "Shrmip sauteed with ginger and hot sauce"
#      ,
#        name: "Kung Pao Triple Delight"
#        price: 8.75
#        description: "Chicken and shrimp and beef sauteed in hot pepper sauce"
#      ,
#        name: "House Special Pan Fried Noodles"
#        price: 8.95
#        description: "Shrimp beef chicken with vegetable in brown sauce on crispy noodles"
#      ,
#        name: "Butter Shrimp"
#        price: 9.50
#        description: "Large shrimp sauteed with onion, carrot, green onion in special sauce"
#      ,
#        name: "Peking Shrimp"
#        price: 9.50
#        description: "Shrimp sauteed with special sauce"
#      ,
#        name: "Triple Delight"
#        price: 8.95
#        description: "Shrimp beef, chicken with mixed vegetables in delicious brown sauce"
#      ,
#        name: "Lemon Chicken"
#        price: 7.95
#      ,
#        name: "House Chicken"
#        price: 7.95
#        description: "Sliced chicken sauteed with vegetables and special sauce"
#      ]
#    ,
#      name: "Lunch Special"
#      description: "Lunch served with fried rice and choice of crab rangoon or egg roll choice of egg drop soup, hot and sour soup"
#      items: [
#        name: "Sweet and Sour Chicken"
#        price: 4.25
#      ,
#        name: "Moo Goo Gai Pan"
#        price: 4.25
#      ,
#        name: "Chicken with Vegetable"
#        price: 4.25
#      ,
#        name: "Chicken with Broccoli"
#        price: 4.25
#      ,
#        name: "Cashew Chicken"
#        price: 4.25
#      ,
#        name: "Garlic Chicken"
#        price: 4.25
#      ,
#        name: "Chicken Chow Mein"
#        price: 4.25
#      ,
#        name: "Yu Hsiang Chicken"
#        price: 4.25
#      ,
#        name: "Kung Pao Chicken"
#        price: 4.25
#      ,
#        name: "Hunan Chicken"
#        price: 4.25
#      ,
#        name: "Curry Chicken"
#        price: 4.25
#      ,
#        name: "Vegetable Delight"
#        price: 4.25
#      ,
#        name: "Yu Hsiang Broccoli"
#        price: 4.25
#      ,
#        name: "Sweet and Sour Pork"
#        price: 4.25
#      ,
#        name: "Pork Chow Mein"
#        price: 4.25
#      ,
#        name: "Pork with Vegetables"
#        price: 4.25
#      ,
#        name: "Hunan Pork"
#        price: 4.25
#      ,
#        name: "Beef Chow Mein"
#        price: 4.55
#      ,
#        name: "Beef with Broccoli"
#        price: 4.55
#      ,
#        name: "Beef with Vegetables"
#        price: 4.55
#      ,
#        name: "Beef with Green Pepper"
#        price: 4.55
#      ,
#        name: "Mongolian Beef"
#        price: 4.55
#      ,
#        name: "Kung Pao Beef"
#        price: 4.55
#      ,
#        name: "Hunan Beef"
#        price: 4.55
#      ,
#        name: "Sweet and Sour Shrimp"
#        price: 4.95
#      ,
#        name: "Shrimp Chow Mein"
#        price: 4.95
#      ,
#        name: "Shrimp with Vegetables"
#        price: 4.95
#      ,
#        name: "Shrimp with Broccoli"
#        price: 4.95
#      ,
#        name: "Shrimp with Lobster Sauce"
#        price: 4.95
#      ,
#        name: "Hunan Shrimp"
#        price: 4.95
#      ,
#        name: "Kung Pao Shrimp"
#        price: 4.95
#      ,
#        name: "Kung Pao Triple Delight"
#        price: 4.95
#      ,
#        name: "General Tso's Chicken"
#        price: 4.95
#      ,
#        name: "Sesame Chicken"
#        price: 4.95
#      ]
#    ]
#  data.save()
