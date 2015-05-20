Restaurant.delete_all
Cuisine.delete_all
Neighborhood.delete_all
User.delete_all
Review.delete_all

Neighborhood.create(name: "Lakeview", description: "Lakeview has a wide array of trendy taverns, mid-range restaurants and hip shops. All of Lakeview has lots of great shopping and dining options – you can find a wide variety of foods and shops for just about anyone. ")
Neighborhood.create(name: "Lincoln Park", description: "In Lincoln Park, Chicago's motto urbs in horto—or City in a Garden—truly comes to life. Armitage Avenue is lined with independent boutiques and high-end retailers; Clark Street is packed with casual cafes, ethnic restaurants and sweet shops that spill out onto the sidewalks during warm weather; and Lincoln Avenue buzzes all night with bars and taverns that cater to the young college crowd from the nearby DePaul University campus.")
Neighborhood.create(name: "Wrigleyville" , description: "Formerly a working-class neighborhood, Wrigleyville is the nickname to the neighborhood directly surrounding Wrigley Field. Many Wrigleyville bars and restaurants (particularly on North Clark Street) feature sports-oriented themes.")

Cuisine.create(name: "American", description: 'The United States is a rich and varied blend of peoples, religions, and cultures, and this diversity is reflected in its cuisine. Succeeding waves of immigrants, including those arriving on the United States shores today, have brought new culinary traditions and adapted them to the ingredients, kitchens, and customs they found in their new homeland — ever expanding what is called "American food."' )
Cuisine.create(name: "French", description: 'In France, there is a distinctive culture of French food that is undeniable. It is accompanied with pride, exclusive ingredients and techniques, a world renowned culinary school and those special regions that are known for one particular kind of food. To not experience the food, both regional and national, is to not truly experience France.' )
Cuisine.create(name: "Mexican", description: 'Mexican food is popular all around the world. From tacos to enchiladas and nachos, Mexican influences in cooking can be found anywhere. Those native to Mexico pride themselves in using natural, from the earth, local ingredients that generations before them grew up using. The ingredients that they could easily access were the main staples in their cuisine.' )
Cuisine.create(name: "Italian", description: 'Italian food is bold and satisfying without being heavy. It’s rich and textural and uses a whole palette of flavors. Enjoying Italian cuisine is more experiential, not intellectual. It comes from a more emotional place that’s very evocative.' )
Cuisine.create(name: "Chinese", description: 'Chinese people value their way of dining very much. There is an old saying still being quoted today ---"Food is the first neccessity of the people." Delicious and nutritious food has been regarded as the basics of ordinary life. ' )

Restaurant.create(name: "Sheffields", address: '3528 N Sheffield Ave, Chicago, IL 60657', cuisine_id: Cuisine.find_by(name:"American").id, neighborhood_id: Neighborhood.find_by(name:"Lakeview").id, date_visited: '1-1-2015')
Restaurant.create(name: "Cheesie's", address: '958 W Belmont, Chicago, IL 60657', cuisine_id: Cuisine.find_by(name:"American").id, neighborhood_id: Neighborhood.find_by(name:"Lakeview").id, date_visited: '2-1-2015')
Restaurant.create(name: "Lucky's Sandwich Company", address: '3472 N Clark St, Chicago, IL 60657', cuisine_id: Cuisine.find_by(name:"American").id, neighborhood_id: Neighborhood.find_by(name:"Wrigleyville").id, date_visited: '3-1-2015')
Restaurant.create(name: "RoseAngelis", address: '1314 W Wrightwood Ave, Chicago, IL 60614', cuisine_id: Cuisine.find_by(name:"Italian").id, neighborhood_id: Neighborhood.find_by(name:"Lincoln Park").id, date_visited: '4-1-2015')
Restaurant.create(name: "Mia Francesca", address: '3311 N Clark St, Chicago, IL 60657', cuisine_id: Cuisine.find_by(name:"Italian").id, neighborhood_id: Neighborhood.find_by(name:"Lakeview").id, date_visited: '5-1-2015')
Restaurant.create(name: "Cafe El Tapatio", address: '3400 N Ashland Ave, Chicago, IL 60657', cuisine_id: Cuisine.find_by(name:"Mexican").id, neighborhood_id: Neighborhood.find_by(name:"Lakeview").id, date_visited: '3-1-2015')

Review.create(restaurant_id: Restaurant.find_by(name:"Sheffields").id, submitted_review: "Good bbq", rating: 4)
Review.create(restaurant_id: Restaurant.find_by(name:"Sheffields").id, submitted_review: "Crowded but good beer selection", rating: 4)
Review.create(restaurant_id: Restaurant.find_by(name:"Cheesie's").id, submitted_review: "Bring kids during the day", rating: 3)
Review.create(restaurant_id: Restaurant.find_by(name:"Cheesie's").id, submitted_review: "Greasy fast food", rating: 2)
Review.create(restaurant_id: Restaurant.find_by(name:"Lucky's Sandwich Company").id, submitted_review: "Unique and very good", rating: 5)
Review.create(restaurant_id: Restaurant.find_by(name:"Lucky's Sandwich Company").id, submitted_review: "Amazing sandwich", rating: 5)
Review.create(restaurant_id: Restaurant.find_by(name:"RoseAngelis").id, submitted_review: "Try to get a table outside", rating: 3)
Review.create(restaurant_id: Restaurant.find_by(name:"Mia Francesca").id, submitted_review: "Order the green bean salad appetizer", rating: 5)
Review.create(restaurant_id: Restaurant.find_by(name:"Mia Francesca").id, submitted_review: "Good spot for before or after a Cubs game", rating: 4)
Review.create(restaurant_id: Restaurant.find_by(name:"Cafe El Tapatio").id, submitted_review: "Good value", rating: 3)