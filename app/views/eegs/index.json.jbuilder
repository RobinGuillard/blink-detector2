json.array!(@eegs) do |eeg|
  json.extract! eeg, :id, :event, :date
  json.url eeg_url(eeg, format: :json)
end
