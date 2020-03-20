require 'stripe'
require 'uri'
require 'net/http'
require 'json'

class SubscriptionsController < ApplicationController
	def index
	end

	def unsubscribe_plan
		subscription = Stripe::Subscription.delete(params[:subscription_id]) if params[:subscription_id].present?
		redirect_to manage_subscription_path
	end

	def manage_subscription
		@customer_ids = fetch_customer
		@subscriptions = login_user_subscription(@customer_ids)
	end 

	private

	def fetch_customer
		Stripe.api_key = ENV['STRIPEAPIKEY']
		url = URI("https://api.stripe.com/v1/search?query='hnr@gmmail.com'&prefix=false")

		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["content-type"] = 'application/json'
		request["authorization"] = 'Bearer sk_test_dPCRXazafB6SNPrYTtItmONF'

		response = http.request(request)
	  result  =JSON.parse(response.body)
		result = result["data"]
		@res_arr = [] 
		result.each do |i|
		 @res_arr << i["id"] if i["object"] == "customer"
		end
		return @res_arr
	end

	def login_user_subscription(customer_ids)
		subscriptions = Stripe::Subscription.list()
		subscriptions = subscriptions["data"]
		@subs_list = [] 
		subscriptions.each do |sub|
			@subs_list << sub if customer_ids.include? sub["customer"]
		end
		return @subs_list
	end
end
