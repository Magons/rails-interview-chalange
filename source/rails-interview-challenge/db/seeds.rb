# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create([
  {first_name: "Johny", last_name: "Flow"},
  {first_name: "Raj", last_name: "Jamnis"},
  {first_name: "Andrew", last_name: "Chung"},
  {first_name: "Mike", last_name: "Smith"},
])

def successful_transactions
  Charge.create([
    { paid: true, amount: 10, currency: "usd",  customer_id: 1},
    { paid: true, amount: 20, currency: "usd",  customer_id: 1},
    { paid: true, amount: 30, currency: "usd",  customer_id: 1},
    { paid: true, amount: 40, currency: "usd",  customer_id: 1},
    { paid: true, amount: 50, currency: "usd",  customer_id: 1},
    { paid: true, amount: 60, currency: "usd",  customer_id: 2},
    { paid: true, amount: 70, currency: "usd",  customer_id: 2},
    { paid: true, amount: 80, currency: "usd",  customer_id: 2},
    { paid: true, amount: 90, currency: "usd",  customer_id: 3},
    { paid: true, amount: 100, currency: "usd", customer_id: 4},
  ])
end

def failed_transactions
  Charge.create([
    { paid: true, amount: 10, currency: "usd", refunded: true, customer_id: 3},
    { paid: true, amount: 20, currency: "usd", refunded: true, customer_id: 3},
    { paid: true, amount: 30, currency: "usd", refunded: true, customer_id: 3},
    { paid: true, amount: 40, currency: "usd", refunded: true, customer_id: 4},
    { paid: true, amount: 50, currency: "usd", refunded: true, customer_id: 4},
  ])
end

def disputed_transactions
  Charge.create([
    { paid: false, amount: 10, currency: "usd", customer_id: 1},
    { paid: false, amount: 20, currency: "usd", customer_id: 1},
    { paid: false, amount: 30, currency: "usd", customer_id: 1},
    { paid: false, amount: 40, currency: "usd", customer_id: 2},
    { paid: false, amount: 50, currency: "usd", customer_id: 2},
  ])
end

successful_transactions
failed_transactions
disputed_transactions