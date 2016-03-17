json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :token, :business_id, :item, :cost, :interest, :duration, :due_time, :status
  json.url invoice_url(invoice, format: :json)
end
