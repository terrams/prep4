# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Resource.create([
    {
      category: "water",
      description: "Water is essential to survival so you must have a plan for carrying it or obtaining and treating fresh water along the way.  An adult requires 1 gallon of water a day. Your kit should include bottled water, empty water containers and portable water filtration system",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "gallon",
      icon: "water_icon.png",
      image:"water.png"
    },
    {
      category: "food",
      description: "Suggestions vary widely but it is best to include foods that can be safely stored for long periods, can be prepared simply, and are nutrient dense.  Freeze dried meals are light, nutritious and easy to prepare",
      owner: "member",
      quantity_required: 3,
      unit_of_measure: "meals",
      icon: "meal_icon.png",
      image:"meal.png"
    },
   {
      category: "clothing",
      description: "A basic survival outfit consists of a sweathshirt or light jacket, long pants, a long sleeve shirt, spare underwear and a spare pair of socks.  A poncho and sturdy footwear should also be included",
      owner: "",
      quantity_required: 1,
      unit_of_measure: "outfit",
      icon: "clothing_icon.png",
      image:"clothing.png"
    },
   {
      category: "shelter",
      description: "Adequate shelter keeps the elements off you and won’t replace a warm and toasty house. Shelter can vary from a tent to a simple tarp.",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "tarp",
      icon: "shelter_icon.png",
      image:"shelter.png"
    },
   {
      category: "tools",
      description: "Your survival tool kit basics should include flashlights, an emergency radio, tools an utensils for cooking, a swiss army knife, gps or compass and cord.",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "kit",
      icon: "tarp_icon.png",
      image:"tarp.png"
    },
   {
      category: "first aid",
      description: "A basic first aid kit includes pain killers (pills and sprays), bandages, gauze, tape, surgical spirit, hydrogen peroxide, a pair of scissor and also any medications that you need to take regularly.  A whistle to signal distress should also be included.",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "kit",
      icon: "first_aid_icon.png",
      image:"first_aid.png"
    },
   {
      category: "documents",
      description: "ID is also essential for accessing bank accounts and for claiming other assets that you hold. Also, ID helps to track down friends and families.",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "set",
      icon: "documents_icon.png",
      image:"documents.png"
    },
   {
      category: "hygiene",
      description: "Hygiene is very important during a crisis. If you fail to maintain it, you become prone to infections and contamination. Hence, your bug out bag should definitely include a toilet paper roll, hand sanitizer, soap and mouthwash. Women should pack tampons and/or sanitary napkins too",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "kit",
      icon: "hygiene_icon.png",
      image:"hygiene.png"
    },
   {
      category: "fire",
      description: "Fire provides warmth and comfort. It also helps in signalling for rescue. Plus, you will need fire for boiling water and cooking. If you live in a cold region, fire will be your only saviour against freezing temperatures.",
      owner: "member",
      quantity_required: 2,
      unit_of_measure: "means",
      icon: "fire_icon.png",
      image:"fire.png"
    }
  ])

