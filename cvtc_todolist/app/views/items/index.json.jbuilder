json.array!(@items) do |item|
  json.extract! item, :id, :title, :notes, :due_date, :done
  json.url item_url(item, format: :json)
end
