json.extract! message, :id, :idn, :value, :viewed, :answered, :viewed_date, :from_physician_id, :physician_id, :created_at, :updated_at
json.url message_url(message, format: :json)
