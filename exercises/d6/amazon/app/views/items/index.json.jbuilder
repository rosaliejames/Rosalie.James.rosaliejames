json.array!(@items) do |item|
  json.extract! item, :id, :name, :vendor, :in_stock, :price
  json.url item_url(item, format: :json)
end
