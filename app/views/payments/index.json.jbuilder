json.array!(@payments) do |payment|
  json.extract! payment, :id, :invoice, :user_id, :amount
  json.url payment_url(payment, format: :json)
end
