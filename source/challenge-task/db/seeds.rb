# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create(first_name: "Johny", last_name: "Flow")
customer2 = Customer.create(first_name: "Raj", last_name: "Jamnis")
customer3 = Customer.create(first_name: "Andrew", last_name: "Chung")
customer4 = Customer.create(first_name: "Mike", last_name: "Smith")

Charge.create_success({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer2.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer2.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer2.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer3.id })
Charge.create_success({amount: 100, currency: "usd",  customer_id: customer4.id })

Charge.create_disputed({amount: 100, currency: "usd",  customer_id: customer3.id })
Charge.create_disputed({amount: 100, currency: "usd",  customer_id: customer3.id })
Charge.create_disputed({amount: 100, currency: "usd",  customer_id: customer3.id })
Charge.create_disputed({amount: 100, currency: "usd",  customer_id: customer4.id })
Charge.create_disputed({amount: 100, currency: "usd",  customer_id: customer4.id })

Charge.create_failed({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_failed({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_failed({amount: 100, currency: "usd",  customer_id: customer1.id })
Charge.create_failed({amount: 100, currency: "usd",  customer_id: customer2.id })
Charge.create_failed({amount: 100, currency: "usd",  customer_id: customer2.id })
