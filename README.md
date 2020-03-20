# # README

# This README would normally document whatever steps are necessary to get the
# application up and running.

# Things you may want to cover:

# * Ruby version

# * System dependencies

# * Configuration

# * Database creation

# * Database initialization

# * How to run the test suite

# * Services (job queues, cache servers, search engines, etc.)

# * Deployment instructions

# * ...





# ### create customer
# ## create plan
# ### create_source
# ## create Subscription

# require 'stripe'
# Stripe.api_key = 'sk_test_dPCRXazafB6SNPrYTtItmONF'
# p "Customer"
# p Stripe::Customer.retrieve('cus_Gvy1IftR7FboG2')
# Stripe::Plan.create({
#   amount: 5000,
#   currency: 'usd',
#   interval: 'month',
#   product: {name: 'Gold special'},
# p Stripe::Source.create({
#   type: 'ach_credit_transfer',
#   currency: 'usd',
#   owner: {
#     email: 'sandeep.rosen@example.com',
#   },
# })


# # p Stripe::Customer.create_source(
# #   'cus_Gvy1IftR7FboG2',
# #   {
# #     source: 'src_1GO6QGBf4nKbm3nychN9wgWE',
# #   }
# # )
# arr = [] 
# s.each do |i|
#  arr << i["customer"]
# end
# p arr

# # })
# p "Plan"
# p Stripe::Subscription.retrieve('sub_GvyRNlBU9LtrMj')
# p "subscription"
# p subscription = Stripe::Subscription.create({
#     customer: 'cus_Gvy1IftR7FboG2',
#     items: [
#         {
#             plan: 'plan_Gvy528TMvkvlVQ',
#             quantity: 5,
#         },
#     ],
# })
# t.each do |i|
# 	p i["data"]
# end

# o = Stripe::Subscription.retrieve(
#   'sub_GwB4p3qSu83WyM',
# )

# customer_i_need = t.select do |c|
#   p c.email
# end


# # p Stripe::Source.list()
# # src_1GO6QGBf4nKbm3nychN9wgWE
# # Stripe::Customer.create({s
# #   description: 'My First Test Customer (created for API docs)',
# # })

# # require 'stripe'
# # Stripe.api_key = 'sk_test_dPCRXazafB6SNPrYTtItmONF'

# # p Stripe::Subscription.create({
# #   customer: 'cus_GvVZAFt2edgIBw',
# #   items: [{plan: 'plan_GvVkXme0J5yLXm'}],
# # })
# # Stripe::Plan.create({
# #   amount: 5000,
# #   currency: 'usd',
# #   interval: 'month',
# #   product: {name: 'Gold special'},
# # })


# # p Stripe::Plan.list()