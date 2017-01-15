# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Resource.create([
    {
      cateory: "Water",
      description: "Water is essential to survival so you must have a plan for carrying it or obtaining and treating fresh water along the way.  An adult requires 1 gallon of water a day. Your kit should include bottled water, empty water containers and portable water filtration system",
      owner: "member",
      quantity_required: 1,
      unit_of_measure: "gallon",
      icon: "water_icon.png",
      image:"water.png"
    },
    {
      cateory: "Food",
      description: "Suggestions vary widely but it is best to include foods that can be safely stored for long periods, can be prepared simply, and are nutrient dense.  Freeze dried meals are light, nutritious and easy to prepare",
      owner: "member",
      quantity_required: 3,
      unit_of_measure: "meals",
      icon: "meal_icon.png",
      image:"meal.png"
    }
  ])

