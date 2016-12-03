json.array!(@concentrations) do |concentration|
  json.extract! concentration, :id, :concentration_level, :concentration_value, :datetime
  json.url concentration_url(concentration, format: :json)
end
