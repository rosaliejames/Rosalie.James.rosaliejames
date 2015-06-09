json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :billing_address, :shipping_address, :payment_type, :credit_card_num
  json.url user_url(user, format: :json)
end
