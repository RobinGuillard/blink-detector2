json.array!(@eeg_events) do |eeg_event|
  json.extract! eeg_event, :id, :event, :date
  json.url eeg_event_url(eeg_event, format: :json)
end
