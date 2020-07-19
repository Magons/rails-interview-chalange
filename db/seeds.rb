# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customers = [{first_name: "Johny", last_name: "Flow"},{first_name: "Raj", last_name: "Jamnis"},{first_name: "Andrew", last_name: "Chung"},{first_name: "Mike", last_name: "Smith"}]
customers.each do |customer|
  Customer.create(customer)
end


@cust1 = Customer.find(1)
@cust2 = Customer.find(2)
@cust3 = Customer.find(3)
@cust4 = Customer.find(4)

# Success Charges

5.times do |charge|
  Charge.create({amount: 5000, currency: "usd", paid: "true", refunded: "false", customer_id: @cust1.id })
end

3.times do |charge|
  Charge.create({amount: 5000, currency: "usd", paid: true, refunded: false, customer_id: @cust2.id })
end

2.times do |charge|
  Charge.create({amount: 4999, currency: "usd", paid: true, refunded: false, customer_id: @cust3.id })
end

# Failed Charges

3.times do |charge|
  Charge.create({amount: 6805, currency: "usd", paid: false, refunded: false, customer_id: @cust3.id })
end

2.times do |charge|
  Charge.create({amount: 5840, currency: "usd", paid: false, refunded: false, customer_id: @cust4.id })
end

# Disputed Charges

3.times do |charge|
  Charge.create({amount: 7000, currency: "usd", paid: true, refunded: true, customer_id: @cust1.id })
end
2.times do |charge|
  Charge.create({amount: 8000, currency: "usd", paid: true, refunded: true, customer_id: @cust2.id })
end