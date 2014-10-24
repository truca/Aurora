json.array!(@operations) do |operation|
  json.extract! operation, :id, :person, :amount, :description, :solved
  json.url operation_url(operation, format: :json)
end
