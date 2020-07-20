# frozen_string_literal: true

Customer.destroy_all
Charge.destroy_all

customers = Customer.create([{ first_name: 'Johny', last_name: 'Flow' },
                             { first_name: 'Raj', last_name: 'Jamnis' },
                             { first_name: 'Andrew', last_name: 'Chung' },
                             { first_name: 'Mike', last_name: 'Smith' }])



5.times do
  Charge.create_success_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[0] })
end

3.times do
  Charge.create_success_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[1] })
end

Charge.create_success_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[2] })
Charge.create_success_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[3] })

3.times do
  Charge.create_failed_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[2] })
end

2.times do
  Charge.create_failed_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[3] })
end

3.times do
  Charge.create_disputed_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[0] })
end

2.times do
  Charge.create_disputed_charge({ amount: rand(1..5000), currency: 'usd', created: Time.now.strftime('%s'), customer: customers[1] })
end
